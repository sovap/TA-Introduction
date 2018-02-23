package stepDefinition;

import static org.junit.Assert.assertEquals;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.After;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class TestSteps {
	public static WebDriver driver;
	
	@After
	public void afterScenario() 
	{
	     driver.quit();
	}
	
	@Given("^browser with google is opened$")
	public void browser_with_google_is_opened() throws Throwable {
		driver = new ChromeDriver();
        driver.get("https://google.cz");
        driver.manage().window().maximize();
		}

	@When("^user search for robot framework page$")
	public void user_search_for_robot_framework_page() throws Throwable {
		driver.findElement(By.id("lst-ib")).sendKeys("Robot Framework");
        driver.findElement(By.id("lst-ib")).sendKeys(Keys.ENTER);
		}
	
	@When("^user search for selenium webdriver page$")
	public void user_search_for_selenium_webdriver_page() throws Throwable {
		driver.findElement(By.id("lst-ib")).sendKeys("Selenium WebDriver");
        driver.findElement(By.id("lst-ib")).sendKeys(Keys.ENTER);
		}

	@And("^user navigate to robot framework page$")
	public void user_navigate_to_robot_framework_page() throws Throwable {
		driver.findElement(By.linkText("Robot Framework")).click();
		}

	@And("^user navigate to selenium webdriver page$")
	public void user_navigate_to_selenium_webdriver_page() throws Throwable {
		driver.findElement(By.linkText("Selenium WebDriver")).click();
		}

	@Then("^title of opened page is robot framework$")
	public void title_of_opened_page_is_robot_framework() throws Throwable {
		String pageTitle = driver.getTitle();      
        assertEquals("Robot Framework", pageTitle);
	}

	@Then("^title of opened page is selenium webdriver$")
	public void title_of_opened_page_is_selenium_webdriver() throws Throwable {
		String pageTitle = driver.getTitle();      
        assertEquals("Selenium WebDriver", pageTitle);
	}

}