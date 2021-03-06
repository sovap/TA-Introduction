*** Settings ***
Library     Selenium2Library

*** Keywords ***  
Open Browser With Google
    Open Browser                https://google.cz           Chrome
    Maximize Browser Window

Navigate To Page
    [Arguments]                 ${page_title}
    Input Text                  id=lst-ib                   ${page_title}
    Press Key                   id=lst-ib                   \\13
    Click Element               link=${page_title}
    
Validate Page Title
    [Arguments]                 ${page_title}
    Title Should Be             ${page_title}

Close The Browser
    Close Browser