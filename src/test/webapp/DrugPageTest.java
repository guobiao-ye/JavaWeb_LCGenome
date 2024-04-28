import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.By;
import java.util.List;

public class DrugPageTest {
    public static void main(String[] args) {
        // Set Chrome driver path
        System.setProperty("webdriver.chrome.driver", "path_to_chrome_driver");

        // Create a new instance of the Chrome driver
        WebDriver driver = new ChromeDriver();

        // Navigate to the drug.jsp page
        driver.get("http://localhost:8080/JavaWeb_LCGenome/drug.jsp");

        // Locate the table element
        WebElement table = driver.findElement(By.tagName("table"));

        // Find all rows in the table
        List<WebElement> rows = table.findElements(By.tagName("tr"));

        // Print table headers
        WebElement headerRow = rows.get(0);
        List<WebElement> headerCells = headerRow.findElements(By.tagName("th"));
        for (WebElement cell : headerCells) {
            System.out.print(cell.getText() + "\t");
        }
        System.out.println();

        // Print table data
        for (int i = 1; i < rows.size(); i++) {
            WebElement row = rows.get(i);
            List<WebElement> cells = row.findElements(By.tagName("td"));
            for (WebElement cell : cells) {
                System.out.print(cell.getText() + "\t");
            }
            System.out.println();
        }

        // Close the browser
        driver.quit();
    }
}
