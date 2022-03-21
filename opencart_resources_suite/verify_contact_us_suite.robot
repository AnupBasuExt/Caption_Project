*** Settings ***
Documentation   This suite handles test case related to Contact Us.

Resource        ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser

*** Test Cases ***
Verify Valid Credential Test
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    Input Text    id=input-email    alubasu
    Input Text    id=input-password    qwerty123
    Click Element    xpath=//button[@class='btn btn-primary btn-lg hidden-xs']