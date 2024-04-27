<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Variant Information Lookup</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background: linear-gradient(to right, #0074D9, #001f3f);
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }
        footer {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
        footer p {
            margin: 0;
        }
        footer i {
            font-size: 24px;
            margin: 0 5px; /* 调整图标之间的间距 */
        }
        /* Form Styles */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        form {
            text-align: center;
            margin-top: 20px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #0074D9;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        input[type="file"] {
            display: none;
        }
        label {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #0074D9;
            color: #fff;
            border: none;
            cursor: pointer;
            display: inline-block;
        }
        label:hover {
            background-color: #0056b3;
        }
        /* Display matched information */
        .matched-info {
            margin-top: 20px;
            border-collapse: collapse;
            width: 100%;
        }
        .matched-info th, .matched-info td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .matched-info th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<header>
    <div class="container">
        <h1>Variant Information Lookup</h1>
    </div>
</header>
<div class="container">
    <form action="MatchVariants" method="post" enctype="multipart/form-data">
        <input type="file" name="variantFile" id="variantFile" accept=".tsv">
        <label for="variantFile"><i class="fas fa-upload"></i> Choose TSV File</label>
        <button type="submit"><i class="fas fa-search"></i> Upload and Match</button>
    </form>
    <!-- Display matched information here -->
    <table class="matched-info">
        <thead>
        <tr>
            <th>Gene ID</th>
            <th>Symbol</th>
            <th>Name</th>
            <th>Site</th>
            <th>Type</th>
            <th>Annotations</th>
            <th>Targeted Drug</th>
            <th>Description</th>
        </tr>
        </thead>
        <tbody>
        <!-- Populated dynamically with matched information -->
        </tbody>
    </table>
</div>

<footer>
    <div class="container">
        <p>&copy; 2024 ZJU-UOE LCGenome</p>
        <p><i class="fab fa-twitter"></i> <i class="fab fa-facebook"></i> <i class="fab fa-instagram"></i></p>
    </div>
</footer>

</body>
</html>
