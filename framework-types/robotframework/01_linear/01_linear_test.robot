*** Settings ***
Library     Selenium2Library

*** Test cases ***
Validate title of robot framework web page  
    Open Browser                https://google.cz           chrome
    Maximize Browser Window
    Input Text                  id=lst-ib                   Robot Framework
    Press Key                   id=lst-ib                   \\13
    Click Element               link=Robot Framework
    Title Should Be             Robot Framework
    Close Browser
    
Validate title of selenium webdriver web page  
    Open Browser                https://google.cz           chrome
    Maximize Browser Window
    Input Text                  id=lst-ib                   Selenium WebDriver
    Press Key                   id=lst-ib                   \\13
    Click Element               link=Selenium WebDriver
    Title Should Be             Selenium WebDriver
    Close Browser