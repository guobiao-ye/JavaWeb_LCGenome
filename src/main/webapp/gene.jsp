<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lung Cancer Gene Information</title>
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
            padding: 12px 15px; /* Original padding */
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
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
        .filter-select {
            float: right;
        }
    </style>
</head>
<body>
<header>
    <div class="container">
        <h1>Lung Cancer Gene Information</h1>
    </div>
</header>

<div class="container">
    <table>
        <thead>
        <tr>
            <th>Gene_ID</th>
            <th>Symbol</th>
            <th>Name</th>
            <th>Site</th>
            <th>Type</th>
            <th>Annotations</th>
            <th class="filter-select">
                Targeted_drug
                <select id="drugFilter">
                    <option value="all">All</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
            </th>
            <th>Description</th>
        </tr>
        </thead>
        <tbody>
        <%@ page import="java.sql.*" %>
        <%
            try {
                // 数据库连接信息
                String dbUrl = "jdbc:mysql://localhost:3306/lcgenome";
                String dbUser = "root";
                String dbPassword = "******";

                // 建立数据库连接
                Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

                // 执行查询
                String query = "SELECT * FROM `gene`";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);

                // 遍历结果集并输出表格内容
                while (rs.next()) {
                    String Gene_ID = rs.getString("Gene_ID");
                    String Symbol = rs.getString("Symbol");
                    String Name = rs.getString("Name");
                    String Site = rs.getString("Site");
                    String Type = rs.getString("Type");
                    String Annotations = rs.getString("Annotations");
                    String Drug = rs.getString("Target_drug");
                    String Description = rs.getString("Description");
        %>
        <tr class="<%= Drug %>">
            <td><%= Gene_ID %></td>
            <td><%= Symbol %></td>
            <td><%= Name %></td>
            <td><%= Site %></td>
            <td><%= Type %></td>
            <td><%= Annotations %></td>
            <td><%= Drug %></td>
            <td><%= Description %></td>
        </tr>
        <%
                }
                // 关闭连接
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </tbody>
    </table>
</div>

<footer>
    <div class="container">
        <p>&copy; 2024 ZJU-UOE LCGenome</p>
        <p><i class="fab fa-twitter"></i> <i class="fab fa-facebook"></i> <i class="fab fa-instagram"></i></p>
    </div>
</footer>

<script>
    document.getElementById('drugFilter').addEventListener('change', function() {
        var value = this.value;
        var rows = document.querySelectorAll('tbody tr');
        rows.forEach(function(row) {
            if (value === 'all') {
                row.style.display = '';
            } else {
                var drug = row.querySelector('td:nth-last-child(2)').textContent;
                if (drug === value) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            }
        });
    });
</script>

</body>
</html>
