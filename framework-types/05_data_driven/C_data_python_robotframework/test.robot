*** Settings ***
Resource        test_data.robot
Resource        test_library.robot
Test Template   Validate title for page

*** Test cases ***
Validate title of robot framework web page        Robot Framework
Validate title of selenium webdriver web page     Selenium WebDriver