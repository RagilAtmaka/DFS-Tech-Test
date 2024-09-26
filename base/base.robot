*** Settings ***
Library         SeleniumLibrary
Library         String
Variables       ../resources/data/testdata.py

*** Keywords ***
Go To Home Page
    Go To    ${URLWEB}

Generate Random User
    ${randomString}=    Generate Random String    10    [LETTERS]
    ${Name}=    Set Variable    ${randomString}
    RETURN    ${Name}

Generate Random Password
    ${randomPassword}=    Generate Random String    10    [LETTERS][NUMBERS]    # Atau kombinasi karakter lain
    RETURN    ${randomPassword}
    
Wait Until Element Is Visible With Long Time
    [Arguments]    ${Element}
    Wait Until Element Is Visible    ${Element}    45

Wait Until Element Is Visible in 10s
    [Arguments]    ${Element}
    Wait Until Element Is Visible    ${Element}    10

Wait Until Element Is Not Visible With Long Time
    [Arguments]    ${Element}
    Wait Until Element Is Not Visible    ${Element}    45

Alert Warning Validation Register
    [Arguments]    ${AlertMessage}
    Wait Until Element Is Visible    ${AlertMessage}