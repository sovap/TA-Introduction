import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

class PythonTest(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Chrome()

    def test_search_in_python_org(self):
        driver = self.driver
        driver.get("https://www.google.cz")
        assert "Google" in driver.title
        google_input = driver.find_element_by_name("q")
        google_input.clear()
        google_input.send_keys("Robot Framework")
        google_input.send_keys(Keys.RETURN)
        robot_link = driver.find_element_by_link_text("Robot Framework")
        robot_link.click()
        assert "Robot Framework" in driver.title

    def tearDown(self):
        self.driver.close()

if __name__ == "__main__":
    unittest.main()