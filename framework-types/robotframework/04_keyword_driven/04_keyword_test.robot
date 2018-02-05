*** Settings ***
Resource    ./resources/data.robot
Resource    ./resources/generic_library.robot

*** Test cases ***
Validate title of robot framework web page
    [Setup]                     Open browser with url       ${GOOGLE_URL}       ${BROWSER}
    [Teardown]                  Shut down execution

    Navigate to web page        ${ROBOTFRAMEWORK_TITLE}
    Validate page title         ${ROBOTFRAMEWORK_TITLE}
    
Validate title of selenium webdriver web page
    [Setup]                     Open browser with url       ${GOOGLE_URL}       ${BROWSER}
    [Teardown]                  Shut down execution
    Navigate to web page        ${SELENIUMWEBDRIVER_TITLE}
    Validate page title         ${SELENIUMWEBDRIVER_TITLE}