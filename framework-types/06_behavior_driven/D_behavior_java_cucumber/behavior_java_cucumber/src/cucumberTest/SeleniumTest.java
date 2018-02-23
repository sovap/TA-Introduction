package cucumberTest;

import static org.junit.Assert.assertEquals;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumTest {
		private static WebDriver driver = null;
	public static void main(String[] args) {
        driver = new ChromeDriver();
        driver.get("https://google.cz");
        driver.manage().window().maximize();    
        driver.findElement(By.id("lst-ib")).sendKeys("Robot Framework");
        driver.findElement(By.id("lst-ib")).sendKeys(Keys.ENTER);
        driver.findElement(By.linkText("Robot Framework")).click(); 
        String pageTitle = driver.getTitle();      
        assertEquals("Robot Framework", pageTitle);
        driver.quit();
	}
}