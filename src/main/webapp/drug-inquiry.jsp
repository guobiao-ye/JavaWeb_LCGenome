<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Targeted Drug of Lung Cancer</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        /* Header Styles */
        header {
            background: linear-gradient(to right, #0074D9, #001f3f);
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }
        header h1 {
            font-size: 32px;
            margin: 0;
        }
        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        /* Search Styles */
        .search-container {
            margin-bottom: 20px;
        }
        .search-container input[type=text] {
            padding: 10px;
            width: 60%;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .search-container button {
            padding: 10px 20px;
            background-color: #0074D9;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .search-container button:hover {
            background-color: #001f3f;
        }
        /* Footer Styles */
        footer {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
<header>
    <div class="container">
        <h1>Targeted Drug of Lung Cancer</h1>
    </div>
</header>

<div class="container">
    <!-- Search Form -->
    <div class="search-container">
        <form action="" method="post">
            <input type="text" placeholder="Enter Gene Symbol" name="geneLocus">
            <button type="submit">Search</button>
        </form>
    </div>

    <!-- Search Results -->
    <%
        try {
            if (request.getMethod().equals("POST")) {
                String geneLocusParam = request.getParameter("geneLocus");

                // 数据库连接信息
                String dbUrl = "jdbc:mysql://localhost:3306/lcgenome";
                String dbUser = "root";
                String dbPassword = "******";

                // 建立数据库连接
                Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

                // 执行查询
                String query = "SELECT * FROM `drug` WHERE `Gene_symbol` LIKE ?";
                PreparedStatement pstmt = conn.prepareStatement(query);
                pstmt.setString(1, "%" + geneLocusParam + "%");
                ResultSet rs = pstmt.executeQuery();

                // 如果查询结果不为空，则显示表格
                if (rs.next()) {
    %>
    <table>
        <thead>
        <tr>
            <th>Drug_ID</th>
            <th>Drug_name</th>
            <th>Gene_ID</th>
            <th>Gene_symbol</th>
            <th>Gene_name</th>
            <th>Summary_markdown</th>
        </tr>
        </thead>
        <tbody>
        <%
            // 遍历结果集并输出表格内容
            do {
                String Drug_ID = rs.getString("Drug_ID");
                String Drug_name = rs.getString("Drug_name");
                String Gene_ID = rs.getString("Gene_ID");
                String Gene_symbol = rs.getString("Gene_symbol");
                String Gene_name = rs.getString("Gene_name");
                String Summary_markdown = rs.getString("Summary_markdown");
        %>
        <tr>
            <td><%= Drug_ID %></td>
            <td><%= Drug_name %></td>
            <td><%= Gene_ID %></td>
            <td><%= Gene_symbol %></td>
            <td><%= Gene_name %></td>
            <td><%= Summary_markdown %></td>
        </tr>
        <%
            } while (rs.next());
        %>
        </tbody>
    </table>
    <%          } else { %>
    <p>No records found for <%= geneLocusParam %>.</p>
    <%          }
        // 关闭连接
        conn.close();
    }
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</div>

<footer>
    <div class="container">
        <p>&copy; 2024 ZJU-UOE LCGenome</p>
        <p><i class="fab fa-twitter"></i> <i class="fab fa-facebook"></i> <i class="fab fa-instagram"></i></p>
    </div>
</footer>
</body>
</html>
