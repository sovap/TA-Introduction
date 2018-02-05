*** Settings ***
Library     Selenium2Library

*** Keywords ***  
Open chrome browser with Google page
    Open Browser                https://google.cz           chrome
    Maximize Browser Window

Shut down execution
    Close Browser