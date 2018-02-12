*** Settings ***
Library     Selenium2Library

*** Keywords ***  
Open browser with url
    [Arguments]                 ${page_url}     ${browser}
    Open Browser                ${page_url}     ${browser}
    Maximize Browser Window

Shut down execution
    Close Browser
    
Navigate to web page
    [Arguments]                 ${page_title}
    Input Text                  id=lst-ib                   ${page_title}
    Press Key                   id=lst-ib                   \\13
    Click Element               link=${page_title}
    
Validate page title
    [Arguments]                 ${page_title}
    Title Should Be             ${page_title}