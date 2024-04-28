import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.By;

public class CheckPageTest {
    public static void main(String[] args) {
        // 设置 Chrome 驱动路径
        System.setProperty("webdriver.chrome.driver", "path_to_chrome_driver");

        // 创建 Chrome 驱动实例
        WebDriver driver = new ChromeDriver();

        // 导航到登录页面
        driver.get("http://localhost:8080/JavaWeb_LCGenome/login.jsp");

        // 输入用户名和密码
        WebElement usernameInput = driver.findElement(By.name("username"));
        WebElement passwordInput = driver.findElement(By.name("password"));
        WebElement loginButton = driver.findElement(By.tagName("button"));

        usernameInput.sendKeys("your_username");
        passwordInput.sendKeys("your_password");

        // 单击登录按钮
        loginButton.click();

        // 等待一段时间以便页面加载完成
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        // 检查页面是否跳转到 services.jsp 页面
        String currentUrl = driver.getCurrentUrl();
        if (currentUrl.equals("http://localhost:8080/JavaWeb_LCGenome/services.jsp")) {
            System.out.println("Login successful");
        } else {
            System.out.println("Login failed");
        }

        // 关闭浏览器
        driver.quit();
    }
}
