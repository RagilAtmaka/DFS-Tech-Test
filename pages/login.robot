*** Settings ***
Library         SeleniumLibrary
Library         Collections
Resource        ../base/base.robot
Variables       ../resources/locators/Login.py
Variables        ../resources/data/testdata.py

*** Keywords ***

To Login Page
    Wait Until Element Is Visible With Long Time    ${loginLogo}
    Click Element    ${InputUserName}

Input Data User
    [Arguments]    ${User}    ${Password}
    Wait Until Element Is Enabled    ${InputUserName}
    Input text    ${InputUserName}    ${Name}
    Wait Until Element Is Enabled    ${InputPassword}
    Input text    ${InputPassword}    ${Password}

Input Login Form
    [Arguments]    ${Email}    ${Password}
    Wait Until Element Is Enabled    ${InputUserName}
    Input text    ${InputUserName}    ${Name}
    Wait Until Element Is Enabled    ${InputPassword}
    Input text    ${InputPassword}    ${Password}

Validate Error AlertMessage
    Wait Until Element Is Not Visible With Long Time    ${errorMessage}

Validate Logged in
    Wait Until Element Is Visible With Long Time    ${HeaderLogin}
    Click Element    ${brgrMenu}
    Wait Until Element Is Visible With Long Time    ${logout}
    Click Element    ${logout}
    Wait Until Element Is Visible With Long Time    ${InputUserName}