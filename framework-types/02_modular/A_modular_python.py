from selenium import webdriver
from selenium.webdriver.common.keys import Keys

#### modules (functions)
def OpenBrowserWithGoogle():
    driver = webdriver.Chrome()
    driver.get("https://www.google.cz")
    driver.maximize_window()
    return driver

def NavigateToRobotFrameworkPage(driver):
    google_input = driver.find_element_by_name("q")
    google_input.send_keys("Robot Framework")
    google_input.send_keys(Keys.RETURN)
    robot_link = driver.find_element_by_link_text("Robot Framework")
    robot_link.click()
    return

def NavigateToSeleniumWebDriverPage(driver):
    google_input = driver.find_element_by_name("q")
    google_input.send_keys("Selenium WebDriver")
    google_input.send_keys(Keys.RETURN)
    robot_link = driver.find_element_by_link_text("Selenium WebDriver")
    robot_link.click()
    return

def ValidateRobotFrameworkPageTitle(driver):
    assert "Robot Framework" in driver.title
    return

def ValidateSeleniumWebDriverPageTitle(driver):
    assert "Selenium WebDriver" in driver.title
    return

def CloseTheBrowser(driver):
    driver.close()
    return

#### Title test for page: Robot Framework
driver = OpenBrowserWithGoogle()
NavigateToRobotFrameworkPage(driver)
ValidateRobotFrameworkPageTitle(driver)
CloseTheBrowser(driver)

#### Title test for page: Selenium WebDriver
driver = OpenBrowserWithGoogle()
NavigateToSeleniumWebDriverPage(driver)
ValidateSeleniumWebDriverPageTitle(driver)
CloseTheBrowser(driver)