*** Settings ***
Documentation   This suite willl handles all the test cases related to invalid credentials test.Test case for opencart.

Resource        ../Resource/Base/CommonFunctionality.resource

Test Setup          Launch Browser
Test Teardown       Close Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1     test@gmail.com      test123        No match for E-Mail and/or Password.
TC2     demo@gmail.com      demo123        No match for E-Mail and/or Password.

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${email}    ${password}     ${expected_error}
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    Input Text    id=input-email    ${email}
    Input Text    id=input-password    ${password}
    Click Element    xpath=//button[@class='btn btn-primary btn-lg hidden-xs']
    Element Should Contain    xpath=//div[@class='alert alert-danger']    ${expected_error}