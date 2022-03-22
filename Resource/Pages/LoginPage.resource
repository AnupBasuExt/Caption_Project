*** Settings ***
Documentation   This suite will handles all operation in the logi page

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${EMAIL_LOCATOR}        id=input-email
${PASSWORD_LOCATOR}     id=input-password
${BUTTON_LOGIN}         xpath=//button[@class='btn btn-primary btn-lg hidden-xs']
${ERROR_LOCATOR}        xpath=//div[@class='alert alert-danger']

*** Keywords ***
Enter Email
    [Arguments]     ${email}
    Input Text      ${EMAIL_LOCATOR}     ${email}

Enter Password
    [Arguments]     ${password}
    Input Text    ${PASSWORD_LOCATOR}    ${password}

Click Login
    Click Element    ${BUTTON_LOGIN}

Validate Error
    [Arguments]     ${expected_error}
    Element Should Contain    ${ERROR_LOCATOR}    ${expected_error}