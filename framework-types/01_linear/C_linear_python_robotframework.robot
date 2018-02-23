*** Settings ***
Library     Selenium2Library

*** Test cases ***
Title test for page: Robot Framework  
    Open Browser                https://google.cz           Chrome
    Maximize Browser Window
    Input Text                  id=lst-ib                   Robot Framework
    Press Key                   id=lst-ib                   \\13
    Click Element               link=Robot Framework
    Title Should Be             Robot Framework
    Close Browser
    
Title test for page: Selenium WebDriver  
    Open Browser                https://google.cz           Chrome
    Maximize Browser Window
    Input Text                  id=lst-ib                   Selenium WebDriver
    Press Key                   id=lst-ib                   \\13
    Click Element               link=Selenium WebDriver
    Title Should Be             Selenium WebDriver
    Close Browser