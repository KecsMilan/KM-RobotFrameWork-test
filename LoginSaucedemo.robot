*** Settings ***
Library    Selenium2Library

*** Test Cases ***
#Open Saucedemo firefox
#    Open Browser    https://www.saucedemo.com/    firefox
#    Input Text    locator=id=user-name    text=standard_user
#    Input Password    locator=id=password    password=secret_sauce
#    Click Button    //*[@id="login-button"]
#    Page Should Contain Element    //*[@id="shopping-cart-container"]/a
#    Sleep    2s

Login with standard_user wrong password firefox
    Open Browser    url=https://www.saucedemo.com/    browser=firefox
    Sleep    1sec
    Input Text    locator=//*[@id="user-name"]    text=standard_user
    Sleep    1sec
    Input Password   locator=//*[@id="password"]    password="jelszo"
    Click Button    locator=//*[@id="login-button"]  

Login with wrong username and valid password firefox
    Open Browser    url=https://www.saucedemo.com/    browser=firefox
    Sleep    1sec
    Input Text    locator=//*[@id="user-name"]    text=standard_usr
    Sleep    1sec
    Input Password   locator=//*[@id="password"]    password="secret_sauce"
    Click Button    locator=//*[@id="login-button"]  

Login without username firefox
    Open Browser    url=https://www.saucedemo.com/    browser=firefox
    Sleep    1sec
    Input Password   locator=//*[@id="password"]    password="secret_sauce"
    Click Button    locator=//*[@id="login-button"]  

Login without password firefox
    Open Browser    url=https://www.saucedemo.com/    browser=firefox
    Sleep    1sec
    Input Text    locator=//*[@id="user-name"]    text=standard_user
    Click Button    locator=//*[@id="login-button"]