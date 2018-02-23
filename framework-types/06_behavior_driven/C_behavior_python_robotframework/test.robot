*** Settings ***
Library     Selenium2Library

*** Keywords ***  
browser with google is opened
    Open Browser                https://google.cz           Chrome
    Maximize Browser Window

user search for robot framework page
    Input Text                  id=lst-ib                   Robot Framework
    Press Key                   id=lst-ib                   \\13

user search for selenium webdriver page
    Input Text                  id=lst-ib                   Selenium WebDriver
    Press Key                   id=lst-ib                   \\13

user navigate to robot framework page
    Click Element               link=Robot Framework

user navigate to selenium webdriver page
    Click Element               link=Selenium WebDriver

title of opened page is robot framework
    Title Should Be             Robot Framework
    Close Browser
    
title of opened page is selenium webdriver
    Title Should Be             Selenium WebDriver
    Close Browser

*** Test cases ***
Validate title of robot framework web page
    Given browser with google is opened
    When user search for robot framework page
    And user navigate to robot framework page
    Then title of opened page is robot framework         
    
Validate title of selenium webdriver web page
    Given browser with google is opened
    When user search for selenium webdriver page
    And user navigate to selenium webdriver page
    Then title of opened page is selenium webdriver