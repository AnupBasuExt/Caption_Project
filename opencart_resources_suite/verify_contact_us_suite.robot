*** Settings ***
Documentation   This suite handles test case related to Contact Us.

Resource        ../Resource/Base/CommonFunctionality.resource

Library     DataDriver      file=../test_data/OpenCart_Data.xlsx        sheet_name=OpenCart_Contact_Us

Test Setup      Launch Browser
Test Teardown   Close Browser

Test Template       Verify Contact Us Template

*** Test Cases ***
Verify Contact Us Test

*** Keywords ***
Verify Contact Us Template
    [Arguments]     ${email}    ${password}     ${fourdigit_pin}    ${query_question}       ${validation_1}      ${validation_2}
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    Input Text    id=input-email    ${email}
    Input Text    id=input-password    ${password}
    Click Element    xpath=//button[@class='btn btn-primary btn-lg hidden-xs']
    Input Text    id=input-pin    ${fourdigit_pin}
    Click Element    xpath=//button[@type='submit']
    Click Element    xpath=//a[contains(text(),'Resources')]
    Mouse Over    xpath=//a[text()='Contact Us']
    Sleep    5s
    Click Element    link=Contact Us
    Click Element    xpath=//select[@id='input-reason']
    Select From List By Label    xpath=//select[@id='input-reason']     ${query_question}
    Input Text    id=input-company    ZwgNar
    Input Text    id=input-website    zwgNar.com
    Input Text    id=input-telephone    7000000011
    Input Text    id=input-enquiry    Need full info about partnership
    Element Text Should Be    xpath=//a[text()='opencart@zendesk.com']    ${validation_1}
    Element Should Contain    xpath=//div[@class='alert alert-info']      ${validation_2}

*** Comments ***
    Click on the captcha manually, if captcha exceeds then the below code doesnot work.

    Click Element    xpath=//div[@id='captcha']
    Sleep    10s
    Click Element    xpath=//button[@id='button-send']
    Page Should Contain    Your requirement was sent.


