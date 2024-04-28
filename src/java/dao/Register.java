package dao;

import java.sql.*;

public class Register {
    private String dbUrl = "jdbc:mysql://localhost:3306/web";
    private String dbUser = "root";
    private String dbPassword = "Slysg123";

    public boolean RegisterInserted(String username, String password) {
        Connection conn = null;
        PreparedStatement checkStmt = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean isInserted = false;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

            String checkQuery = "SELECT COUNT(*) FROM login WHERE username = ?";
            checkStmt = conn.prepareStatement(checkQuery);
            checkStmt.setString(1, username);
            rs = checkStmt.executeQuery();
            if (rs.next() && rs.getInt(1) == 0) {
                String insertQuery = "INSERT INTO login (username, password) VALUES (?, ?)";
                stmt = conn.prepareStatement(insertQuery);
                stmt.setString(1, username);
                stmt.setString(2, password);

                int rowsInserted = stmt.executeUpdate();
                isInserted = rowsInserted > 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (checkStmt != null) checkStmt.close();
                if(stmt !=null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }

        return isInserted;
    }
}
