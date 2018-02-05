*** Settings ***
Library     Selenium2Library

*** Keywords ***  
Open chrome browser with Google page
    Open Browser                https://google.cz           chrome
    Maximize Browser Window

Navigate to Robot Framework page
    Input Text                  id=lst-ib                   Robot Framework
    Press Key                   id=lst-ib                   \\13
    Click Element               link=Robot Framework
    
Navigate to Selenium WebDriver page
    Input Text                  id=lst-ib                   Selenium WebDriver
    Press Key                   id=lst-ib                   \\13
    Click Element               link=Selenium WebDriver

Validate title of Robot Framework page
    Title Should Be             Robot Framework
    
Validate title of Selenium WebDriver page
    Title Should Be             Selenium WebDriver

Shut down execution
    Close Browser

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