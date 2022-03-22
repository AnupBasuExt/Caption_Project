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
    Mouse Over    xpath=//a[text()='OpenCart Partners']
    Click Element    link=OpenCart Partners
    Click Element    xpath=//select[@class='form-control']
    Select From List By Label    xpath=//select[@class='form-control']      United Kingdom (9)
    Click Element    xpath=//label[normalize-space()='Development Partner']
    Click Element    xpath=//input[@value='1']