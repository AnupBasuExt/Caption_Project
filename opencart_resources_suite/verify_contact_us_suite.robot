*** Settings ***
Documentation   This suite handles test case related to Contact Us.

Resource        ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser

*** Test Cases ***
Verify Valid Credential Test
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    Input Text    id=input-email    qwertybasu@gmail.com
    Input Text    id=input-password    qwertybasu123
    Click Element    xpath=//button[@class='btn btn-primary btn-lg hidden-xs']
    Input Text    id=input-pin    0258
    Click Element    xpath=//button[@type='submit']
    Click Element    xpath=//a[contains(text(),'Resources')]
    Mouse Over    xpath=//a[text()='Contact Us']
    Sleep    5s
    Click Element    link=Contact Us
    Click Element    xpath=//select[@id='input-reason']
    Select From List By Label    xpath=//select[@id='input-reason']     I have a partnership question
    Input Text    id=input-company    ZwgNar
    Input Text    id=input-website    zwgNar.com
    Input Text    id=input-telephone    7000000011
    Input Text    id=input-enquiry    Need full info about partnership
    Element Text Should Be    xpath=//a[text()='opencart@zendesk.com']    opencart@zendesk.com
    Element Should Contain    xpath=//div[@class='alert alert-info']     Please provide as much information in the form below for our agents to be able to assist you.

*** Comments ***
    Click the captcha manually, if captcha exceeds the below code doesnot work.

    Click Element    xpath=//div[@id='captcha']
    Sleep    10s
    Click Element    xpath=//button[@id='button-send']
    Page Should Contain    Your requirement was sent.


