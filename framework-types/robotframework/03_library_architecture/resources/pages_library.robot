*** Settings ***
Library     Selenium2Library

*** Keywords ***  
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