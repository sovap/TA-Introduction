from selenium import webdriver
from selenium.webdriver.common.keys import Keys

#### modules (functions)
def OpenBrowserWithGoogle():
    driver = webdriver.Chrome()
    driver.get("https://www.google.cz")
    driver.maximize_window()
    return driver

def NavigateToPage(driver, page_title):
    google_input = driver.find_element_by_name("q")
    google_input.send_keys(page_title)
    google_input.send_keys(Keys.RETURN)
    robot_link = driver.find_element_by_link_text(page_title)
    robot_link.click()
    return

def ValidatePageTitle(driver, page_title):
    assert page_title in driver.title
    return

def CloseTheBrowser(driver):
    driver.close()
    return