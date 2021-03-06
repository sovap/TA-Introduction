*** Settings ***
Resource    test_data.robot
Resource    test_library.robot

*** Test cases ***
Validate title for all pages                
    :FOR    ${title}                IN                  @{PAGE_TITLE}
    \   Open browser with url       ${GOOGLE_URL}       ${BROWSER}
    \   Navigate to web page        ${title}
    \   Validate page title         ${title}
    \   Shut down execution