*** Settings ***
Documentation   This suite willl handles all the test cases related to invalid credentials test.Test case for opencart.

Resource        ../Resource/Base/CommonFunctionality.resource
Resource        ../Resource/Pages/LoginPage.resource

Test Setup          Launch Browser
Test Teardown       Close Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1     testing@gmail.com      testing123        No match for E-Mail and/or Password.
TC2     demotest@gmail.com      demotest123        No match for E-Mail and/or Password.
TC3     ${EMPTY}            testing123        No match for E-Mail and/or Password.
TC4     demotest@gmail.com      ${EMPTY}       No match for E-Mail and/or Password.

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${email}    ${password}     ${expected_error}
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    Enter Email    ${email}
    Enter Password    ${password}
    Click Login
    Validate Error    ${expected_error}