*** Settings ***
Documentation   This suite handles test case related to Opencart Partners.

Resource        ../Resource/Base/CommonFunctionality.resource

Library     DataDriver      file=../test_data/OpenCart_Data.xlsx      sheet_name=OpenCart_Partners

Test Setup      Launch Browser
Test Teardown   Close Browser

Test Template      Verify OpenCart Partners Template

*** Test Cases ***
Verify OpenCart Partners Test
#TC1     anupbasu@gmail.com      anupbasu123     0258    United Kingdom (9)      +44 1296 584015
#TC2     qwertybasu@gmail.com    qwertybasu123   0258    United Kingdom (9)      +44 1296 584015

*** Keywords ***
Verify OpenCart Partners Template
    [Arguments]     ${email}    ${password}     ${fourdigit_pin}    ${country}   ${validation}
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    Input Text    id=input-email    ${email}
    Input Text    id=input-password    ${password}
    Click Element    xpath=//button[@class='btn btn-primary btn-lg hidden-xs']
    Input Text    id=input-pin    ${fourdigit_pin}
    Click Element    xpath=//button[@type='submit']
    Click Element    xpath=//a[contains(text(),'Resources')]
    Mouse Over    xpath=//a[text()='OpenCart Partners']
    Click Element    link=OpenCart Partners
    Click Element    xpath=//select[@class='form-control']
    Select From List By Label    xpath=//select[@class='form-control']      ${country}
    Click Element    xpath=//label[normalize-space()='Development Partner']
    Click Element    xpath=//input[@value='1']
    Click Element    xpath=//a[contains(text(),'View Partner')][1]
    Page Should Contain    United Kingdom | OpenCart Partner since 01/2014 |
    Element Text Should Be    xpath=//a[text()='+44 1296 584015']    ${validation}

