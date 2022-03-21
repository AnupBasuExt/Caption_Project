*** Settings ***
Documentation   This suite willl handles all the test cases related to invalid credentials test.Test case for opencart.

Resource        ../Resource/Base/CommonFunctionality.resource

Test Setup          Launch Browser
Test Teardown       Close Browser

*** Test Cases ***
Verify Invalid Credential Test
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    Input Text    id=input-email    abcb@gmail.com
    Input Text    id=input-password    abcb123
    Click Element    xpath=//button[@class='btn btn-primary btn-lg hidden-xs']
    Element Should Contain    xpath=//div[@class='alert alert-danger']    No match for E-Mail and/or Password.