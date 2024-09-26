*** Settings ***
Library         SeleniumLibrary
Library         Collections
Resource        ../pages/login.robot
Variables       ../resources/locators/Login.py
Resource        ../base/setup.robot
Resource         ../base/base.robot
Resource        ../pages/login.robot
Variables        ../resources/data/testdata.py

Test Setup       Start Test Case
#Test Teardown    End Test Case

*** Test Cases ***

TCL-001.Failed Login with wrong username and Password
    To Login Page
    ${randomUser}=    Generate Random User
    ${randomPassword}=    Generate Random Password  # Menghasilkan password acak
    Input Data User    ${randomUser}    ${randomPassword}  # Memanggil dengan dua argumen
    Log    Random User: ${randomUser}  # Menampilkan username acak
    Log    Random Password: ${randomPassword}  # Menampilkan password acak
    Click Element    ${btnLogin}
    Validate Error AlertMessage

TCL-002.Successfully Login 
    To Login Page
    Input Data User    ${Name}    ${Password}
    Click Element    ${btnLogin}
    Validate Logged in

