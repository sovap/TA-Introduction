*** Settings ***
Resource    ./resources/generic_library.robot
Resource    ./resources/pages_library.robot

*** Test cases ***
Validate title of robot framework web page
    Open chrome browser with Google page
    Navigate to Robot Framework page
    Validate title of Robot Framework page
    Shut down execution
    
Validate title of selenium webdriver web page
    Open chrome browser with Google page
    Navigate to Selenium WebDriver page
    Validate title of Selenium WebDriver page
    Shut down execution