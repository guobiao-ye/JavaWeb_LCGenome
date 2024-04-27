package crawler;

import com.google.gson.*;

import java.io.*;
import java.net.URI;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DrugCrawler {

    private static final String BASE_API_URL = "https://api.pharmgkb.org/v1/data/label?relatedGenes.symbol=";
    private static final String VIEW_PARAM = "&view=base";
    private static final String GENE_FILE = "gene.tsv"; // 确保这是正确的文件路径
    private static final String OUTPUT_FILE = "drug.tsv";
    private static Map<String, Integer> geneLineNumbers = new HashMap<>();

    public static void main(String[] args) {
        Set<String> geneSymbols = new HashSet<>();
        Set<String> writtenDrugs = new HashSet<>();

        try (BufferedReader reader = new BufferedReader(new FileReader(GENE_FILE))) {
            String line;
            int lineNumber = 0;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split("\t");
                if (parts.length > 1) {
                    geneSymbols.add(parts[1]);
                    geneLineNumbers.put(parts[1], lineNumber); // 存储基因符号和行号
                }
                lineNumber++;
            }
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }

        HttpClient client = HttpClient.newHttpClient();
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(OUTPUT_FILE))) {
            writer.write("Drug_ID\tDrug_name\tGene_ID\tGene_symbol\tGene_name\tSummary_markdown\n");

            for (String symbol : geneSymbols) {
                updateGeneTsvWithStatus(symbol, "no"); // 初始状态为"no"

                String encodedSymbol = URLEncoder.encode(symbol, StandardCharsets.UTF_8);
                String apiUrl = BASE_API_URL + encodedSymbol + VIEW_PARAM;

                try {
                    HttpRequest request = HttpRequest.newBuilder()
                            .uri(URI.create(apiUrl))
                            .header("Accept", "application/json")
                            .build();

                    HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
                    if (response.statusCode() == 200) {
                        processApiResponse(writer, symbol, response.body(), writtenDrugs);
                        updateGeneTsvWithStatus(symbol, "yes"); // 如果请求成功，更新状态为"yes"
                    } else {
                        System.out.println("Failed to fetch data for symbol " + symbol + ". Status code: " + response.statusCode());
                    }
                } catch (IOException | InterruptedException e) {
                    e.printStackTrace();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private static void processApiResponse(BufferedWriter writer, String symbol, String responseBody, Set<String> writtenDrugs) throws IOException {
        JsonObject jsonResponse = JsonParser.parseString(responseBody).getAsJsonObject();
        JsonArray data = jsonResponse.getAsJsonArray("data");

        for (JsonElement dataElement : data) {
            JsonObject item = dataElement.getAsJsonObject();
            if (!writtenDrugs.contains(item.get("id").getAsString())) {
                extractData(item, writer, symbol, writtenDrugs);
            }
        }
    }

    private static void extractData(JsonObject item, BufferedWriter writer, String symbol, Set<String> writtenDrugs) throws IOException {
        // 检查item是否有relatedChemicals
        if (!item.has("relatedChemicals")) {
            return;
        }

        JsonArray chemicals = item.getAsJsonArray("relatedChemicals");
        for (JsonElement chemicalElement : chemicals) {
            JsonObject chemical = chemicalElement.getAsJsonObject();
            String drugId = chemical.get("id").getAsString();
            String drugName = chemical.get("name").getAsString();

            // 如果Drug ID已经写入，则跳过
            if (writtenDrugs.contains(drugId)) {
                continue;
            }

            // 写入Summary Markdown信息
            String summaryText = "";
            if (item.has("summaryMarkdown") && item.get("summaryMarkdown").isJsonObject()) {
                JsonObject summaryMarkdown = item.getAsJsonObject("summaryMarkdown");
                summaryText = stripHtmlTags(summaryMarkdown.get("html").getAsString());
            }

            // 检查item是否有relatedGenes
            if (!item.has("relatedGenes")) {
                writtenDrugs.add(drugId); // 添加到已写入的Drug ID集合
                continue;
            }

            JsonArray genes = item.getAsJsonArray("relatedGenes");
            for (JsonElement geneElement : genes) {
                JsonObject gene = geneElement.getAsJsonObject();
                // 为每个gene单独写入一行
                writer.write(drugId);
                writer.write("\t");
                writer.write(drugName);
                writer.write("\t");
                writer.write(gene.get("id").getAsString());
                writer.write("\t");
                writer.write(gene.get("symbol").getAsString());
                writer.write("\t");
                writer.write(gene.get("name").getAsString());
                writer.write("\t");
                writer.write(summaryText);
            }

            writtenDrugs.add(drugId); // 添加到已写入的Drug ID集合
        }
    }
    private static void updateGeneTsvWithStatus(String symbol, String status) {
        Integer lineNumber = geneLineNumbers.get(symbol);
        if (lineNumber != null) {
            // 读取原始文件内容到列表中
            List<String> lines = new ArrayList<>();
            try (BufferedReader reader = Files.newBufferedReader(Paths.get(GENE_FILE))) {
                String line;
                Pattern pattern = Pattern.compile("(.*" + Pattern.quote(symbol) + ".*)\t.*");
                boolean updated = false;
                while ((line = reader.readLine()) != null) {
                    Matcher matcher = pattern.matcher(line);
                    if (matcher.matches()) {
                        // 如果行匹配特定的基因符号，则追加状态标记
                        line = matcher.group(1) + "\t" + status; // 追加状态
                        updated = true;
                    }
                    lines.add(line);
                }
                if (!updated) {
                    System.out.println("Gene symbol not found on line: " + symbol);
                    return;
                }
            } catch (IOException e) {
                System.out.println("Error reading " + GENE_FILE);
                e.printStackTrace();
                return;
            }

            // 将更新后的内容写回文件
            try (BufferedWriter writer = Files.newBufferedWriter(Paths.get(GENE_FILE), StandardOpenOption.TRUNCATE_EXISTING)) {
                for (String updatedLine : lines) {
                    writer.write(updatedLine);
                    writer.newLine();
                }
            } catch (IOException e) {
                System.out.println("Error writing updated content to " + GENE_FILE);
                e.printStackTrace();
            }
        } else {
            System.out.println("Gene symbol line number not found: " + symbol);
        }
    }

    // Utility method to strip HTML tags from a string
    private static String stripHtmlTags(String html) {
        return html.replaceAll("<[^>]+>", "");
    }
}