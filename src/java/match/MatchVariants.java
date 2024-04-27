import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/MatchVariants")
public class MatchVariants extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dbUrl = "jdbc:mysql://localhost:3306/lcgenome";
        String dbUser = "root";
        String dbPassword = "******";

        List<String> matchedInfo = new ArrayList<>();

        try {
            Part filePart = request.getPart("variantFile");
            InputStream fileContent = filePart.getInputStream();

            // Read the uploaded TSV file
            List<String> variantGenes = readVariantGenes(fileContent);

            // Match variant genes with genes in the database
            for (String variantGene : variantGenes) {
                String matchedInfoForGene = matchGene(dbUrl, dbUser, dbPassword, variantGene);
                if (matchedInfoForGene != null) {
                    matchedInfo.add(matchedInfoForGene);
                }
            }

            // Save matched information to history (you can implement this)

            // Forward the matched information to the JSP for display
            request.setAttribute("matchedInfo", matchedInfo);
            request.getRequestDispatcher("display_matched_info.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to error page if an exception occurs
        }
    }

    // Read the uploaded TSV file and extract gene names
    private List<String> readVariantGenes(InputStream fileContent) throws IOException {
        List<String> variantGenes = new ArrayList<>();
        // Read TSV file and extract gene names, assuming gene names are in the first column
        Files.lines(Paths.get(fileContent.toString()))
                .map(line -> line.split("\t")[0]) // Assuming gene name is in the first column
                .forEach(variantGenes::add);
        return variantGenes;
    }

    // Match variant gene with genes in the database and return relevant information
    private String matchGene(String dbUrl, String dbUser, String dbPassword, String variantGene) {
        try {
            Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
            String query = "SELECT * FROM gene WHERE Symbol = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, variantGene);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                // If gene found, construct information string
                StringBuilder info = new StringBuilder();
                info.append("Gene ID: ").append(rs.getString("Gene_ID")).append(", ");
                info.append("Symbol: ").append(rs.getString("Symbol")).append(", ");
                info.append("Name: ").append(rs.getString("Name")).append(", ");
                info.append("Site: ").append(rs.getString("Site")).append(", ");
                info.append("Type: ").append(rs.getString("Type")).append(", ");
                info.append("Annotations: ").append(rs.getString("Annotations")).append(", ");
                info.append("Targeted Drug: ").append(rs.getString("Target_drug")).append(", ");
                info.append("Description: ").append(rs.getString("Description"));
                return info.toString();
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; // Return null if gene not found in the database
    }
}
