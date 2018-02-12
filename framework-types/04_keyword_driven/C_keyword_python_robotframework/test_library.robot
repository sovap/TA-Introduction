| *** Settings ***         |                         |                    |               |
| Library                  | Selenium2Library        |                    |               |
| Resource                 | object_repository.robot |                    |               |
| Resource                 | test_data.robot         |                    |               |

| *** Keywords ***         |                         |                    |               |
| Open Browser With Google |                         |                    |               |
|                          | Open Browser            | ${GOOGLE_URL}      | ${BROWSER}    |
|                          | Maximize Browser Window |                    |               |
| Navigate To Page         |                         |                    |               |
|                          | [Arguments]             | ${page_title}      |               |
|                          | Input Text              | ${SEARCH_INPUT}    | ${page_title} |
|                          | Press Key               | ${SEARCH_INPUT}    | ${ENTER_KEY}  |
|                          | Click Element           | link=${page_title} |               |
| Validate Page Title      |                         |                    |               |
|                          | [Arguments]             | ${page_title}      |               |
|                          | Title Should Be         | ${page_title}      |               |
| Close The Browser        |                         |                    |               |
|                          | Close Browser           |                    |               |