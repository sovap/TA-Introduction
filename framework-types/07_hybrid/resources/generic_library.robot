*** Settings ***
Library     Selenium2Library
Resource    object_repository.robot

*** Keywords ***  
Open browser with url
    [Arguments]                 ${page_url}     ${browser}
    Open Browser                ${page_url}     ${browser}
    Maximize Browser Window

Shut down execution
    Close Browser
    
Navigate to web page
    [Arguments]                 ${page_title}
    Input Text                  ${SEARCH_INPUT}                   ${page_title}
    Press Key                   ${SEARCH_INPUT}                   ${ENTER_KEY}
    Click Element               link=${page_title}
    
Validate page title
    [Arguments]                 ${page_title}
    Title Should Be             ${page_title}