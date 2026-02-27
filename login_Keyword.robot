*** Settings ***
Library    Selenium2Library

*** Keywords ***
Success Login
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    locator=//*[@id="user-name"]    text=standard_user
    Input Password    locator=//*[@id="password"]    password=secret_sauce
    Click Element    locator=//*[@id="login-button"]