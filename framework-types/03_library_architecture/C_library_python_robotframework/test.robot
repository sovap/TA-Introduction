*** Settings ***
Resource     test_library.robot

*** Test cases ***
Validate title of robot framework web page
    Open Browser With Google
    Navigate To Page            Robot Framework
    Validate Page Title         Robot Framework
    Close The Browser
    
Validate title of selenium webdriver web page
    Open Browser With Google
    Navigate To Page            Selenium WebDriver
    Validate Page Title         Selenium WebDriver
    Close The Browser