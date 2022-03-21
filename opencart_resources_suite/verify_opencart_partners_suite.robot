*** Settings ***
Documentation   This suite handles test case related to Opencart Partners.

Resource        ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser

*** Test Cases ***
Verify Valid Credential Test
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    Input Text    id=input-email    alubasu
    Input Text    id=input-password    qwerty123
    Click Element    xpath=//button[@class='btn btn-primary btn-lg hidden-xs']
    Click Element    xpath=//a[contains(text(),'Resources')]
    #Mouse Over    xpath=//ul[@class='dropdown-menu']//a[text()='OpenCart Partners']
    Sleep    5s
    Click Element    link=OpenCart Partners