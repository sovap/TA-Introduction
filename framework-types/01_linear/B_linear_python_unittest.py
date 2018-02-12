import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

#### Title test for page: Robot Framework
class TitleTestForPageRobotFramework(unittest.TestCase):

    def testBody(self):
        self.driver = webdriver.Chrome()
        driver = self.driver
        driver.maximize_window()
        driver.get("https://www.google.cz")
        google_input = driver.find_element_by_name("q")
        google_input.send_keys("Robot Framework")
        google_input.send_keys(Keys.RETURN)
        robot_link = driver.find_element_by_link_text("Robot Framework")
        robot_link.click()
        assert "Robot Framework" in driver.title
        self.driver.close()

#### Title test for page: Selenium WebDriver
class TitleTestForPageSeleniumWebDriver(unittest.TestCase):

    def testBody(self):
        self.driver = webdriver.Chrome()
        driver = self.driver
        driver.maximize_window()
        driver.get("https://www.google.cz")
        google_input = driver.find_element_by_name("q")
        google_input.send_keys("Selenium WebDriver")
        google_input.send_keys(Keys.RETURN)
        robot_link = driver.find_element_by_link_text("Selenium WebDriver")
        robot_link.click()
        assert "Selenium WebDriver" in driver.title
        self.driver.close()      

if __name__ == "__main__":
    unittest.main()