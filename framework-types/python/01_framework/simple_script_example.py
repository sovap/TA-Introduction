# just simple scripting

from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# TitleTest_RobotFramework
driver = webdriver.Chrome()
driver.get("https://www.google.cz")
assert "Google" in driver.title
google_input = driver.find_element_by_name("q")
google_input.clear()
google_input.send_keys("Robot Framework")
google_input.send_keys(Keys.RETURN)
robot_link = driver.find_element_by_link_text("Robot Framework")
robot_link.click()
assert "Robot Framework" in driver.title
driver.close()

# TitleTest_SeleniumWebDriver
driver = webdriver.Chrome()
driver.get("https://www.google.cz")
assert "Google" in driver.title
google_input = driver.find_element_by_name("q")
google_input.clear()
google_input.send_keys("Selenium WebDriver")
google_input.send_keys(Keys.RETURN)
robot_link = driver.find_element_by_link_text("Selenium WebDriver")
robot_link.click()
assert "Selenium WebDriver" in driver.title
driver.close()