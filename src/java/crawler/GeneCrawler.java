package crawler;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.*;

public class GeneCrawler {

    private static final String GENE_FILE = "gene.tsv";
    private static final String API_BASE_URL = "https://api.gdc.cancer.gov/genes/";

    public static void main(String[] args) throws IOException {
        Map<String, Integer> geneLineNumbers = new HashMap<>();
        Set<String> geneIds = new HashSet<>();

        // 读取raw_gene.tsv文件，获取gene_id和对应的行号
        try (BufferedReader reader = new BufferedReader(new FileReader(GENE_FILE))) {
            String line;
            int lineNumber = 0;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split("\t");
                if (parts.length > 0) {
                    String geneId = parts[0];
                    geneIds.add(geneId);
                    geneLineNumbers.put(geneId, lineNumber);
                }
                lineNumber++;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // 对于每个gene_id，获取描述信息并更新gene.tsv文件
        for (String geneId : geneIds) {
            String description = fetchGeneDescription(geneId);
            updateGeneTsvWithDescription(GENE_FILE, geneId, description, geneLineNumbers.get(geneId));
        }
    }

    private static String fetchGeneDescription(String geneId) throws IOException {
        StringBuilder urlString = new StringBuilder(API_BASE_URL);
        urlString.append(geneId);
        urlString.append("?pretty=false");
        URL url = new URL(urlString.toString());
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");
        connection.connect();

        int responseCode = connection.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            String jsonText = readAll(connection.getInputStream());
            JsonObject jsonObject = JsonParser.parseString(jsonText).getAsJsonObject();
            JsonObject dataObject = jsonObject.getAsJsonObject("data");
            return dataObject.get("description").getAsString();
        } else {
            System.out.println("Failed to fetch data for gene ID " + geneId + ". Status code: " + responseCode);
            return "";
        }
    }

    private static void updateGeneTsvWithDescription(String filePath, String geneId, String description, Integer lineNumber) throws IOException {
        if (description.isEmpty() || lineNumber == null) {
            return;
        }

        List<String> lines = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.startsWith(geneId)) {
                    // 找到对应的基因行，追加描述信息
                    line += "\t" + description;
                }
                lines.add(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // 将更新后的内容写回文件
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, false))) {
            for (String updatedLine : lines) {
                writer.write(updatedLine);
                writer.newLine();
            }
        } catch (IOException e) {
            System.out.println("Error updating " + GENE_FILE + " for gene ID " + geneId);
            e.printStackTrace();
        }
    }

    // 辅助方法，用于从InputStream中读取全部内容
    private static String readAll(InputStream inputStream) throws IOException {
        StringBuilder contentBuilder = new StringBuilder();
        try (BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream))) {
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                contentBuilder.append(line).append(System.lineSeparator());
            }
        }
        return contentBuilder.toString();
    }
}