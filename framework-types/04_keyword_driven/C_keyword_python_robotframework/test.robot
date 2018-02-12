| *** Settings ***                              |                          |             |
| Resource                                      | test_library.robot       |             |
| Resource                                      | test_data.robot          |             |

| *** Test cases ***                            |                          |             |
| Validate title of robot framework web page    |                          |             |
|                                               | Open Browser With Google |             |
|                                               | Navigate To Page         | ${RF_TITLE} |
|                                               | Validate Page Title      | ${RF_TITLE} |
|                                               | Close The Browser        |             |
| Validate title of selenium webdriver web page |                          |             |
|                                               | Open Browser With Google |             |
|                                               | Navigate To Page         | ${SW_TITLE} |
|                                               | Validate Page Title      | ${SW_TITLE} |
|                                               | Close The Browser        |             |