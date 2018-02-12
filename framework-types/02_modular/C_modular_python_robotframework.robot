*** Settings ***
Library     Selenium2Library

*** Keywords ***  
Open Browser With Google
    Create Webdriver            Chrome
    Maximize Browser Window
    Go To                       https://google.cz

Navigate To Robot Framework Page
    Input Text                  id=lst-ib                   Robot Framework
    Press Key                   id=lst-ib                   \\13
    Click Element               link=Robot Framework
    
Navigate To Selenium WebDriver Page
    Input Text                  id=lst-ib                   Selenium WebDriver
    Press Key                   id=lst-ib                   \\13
    Click Element               link=Selenium WebDriver

Validate Robot Framework Page Title
    Title Should Be             Robot Framework
    
Validate Selenium WebDriver Page Title
    Title Should Be             Selenium WebDriver

Close The Browser
    Close Browser

*** Test cases ***
Validate title of robot framework web page
    Open Browser With Google
    Navigate To Robot Framework Page
    Validate Robot Framework Page Title
    Close The Browser
    
Validate title of selenium webdriver web page
    Open Browser With Google
    Navigate To Selenium WebDriver Page
    Validate Selenium WebDriver Page Title
    Close The Browser