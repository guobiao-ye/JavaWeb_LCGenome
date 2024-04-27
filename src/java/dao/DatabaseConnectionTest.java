package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectionTest {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/web";
        String user = "root";
        String password = "********";

        try {
            Connection connection = DriverManager.getConnection(url, user, password);
            if (connection != null) {
                System.out.println("数据库连接成功！");
            } else {
                System.out.println("数据库连接失败，连接对象为null。");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库连接失败：" + e.getMessage());
        }
    }
}
