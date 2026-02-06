*** Settings ***
Library    Selenium2Library

*** Test Cases ***
# Buy product and complete checkout
#     Open Browser    url=https://www.saucedemo.com/    browser=firefox
#     Sleep    0.5s
#     Input Text    locator=//*[@id="user-name"]    text=standard_user
#     Sleep    0.5s
#     Input Password    locator=//*[@id="password"]    password=secret_sauce
#     Sleep    0.5s
#     Click Button    locator=//*[@id="login-button"]
#     Click Button    locator=//*[@id="add-to-cart-sauce-labs-bike-light"]
#     Page Should Contain Element    locator=//*[@id="shopping-cart-container"]/a
#     Click Element    locator=//*[@id="shopping-cart-container"]
#     Sleep    0.5s
#     Click Button    locator=//*[@id="checkout"]
#     Sleep    0.5s
#     Input Text    locator=//*[@id="first-name"]    text=Milán
#     Sleep    0.5s
#     Input Text    locator=//*[@id="last-name"]    text=Kecskeméti
#     Sleep    0.5s
#     Input Text    locator=//*[@id="postal-code"]    text=6100
#     Click Button    locator=//*[@id="continue"]
#     Sleep    0.5s
#     Click Button    locator=//*[@id="finish"]

Buy product and complete checkout chrome
    Open Browser    url=https://www.saucedemo.com/    browser=chrome
    Sleep    0.5s
    Input Text    locator=//*[@id="user-name"]    text=standard_user
    Sleep    0.5s
    Input Password    locator=//*[@id="password"]    password=secret_sauce
    Sleep    0.5s
    Click Button    locator=//*[@id="login-button"]
    Click Button    locator=//*[@id="add-to-cart-sauce-labs-bike-light"]
    Sleep    0.5s
    Click Element    locator=//*[@id="shopping_cart_container"]/a
    Sleep    0.5s
    Click Button    locator=//*[@id="checkout"]
    Sleep    0.5s
    Input Text    locator=//*[@id="first-name"]    text=Milán
    Sleep    0.5s
    Input Text    locator=//*[@id="last-name"]    text=Kecskeméti
    Sleep    0.5s
    Input Text    locator=//*[@id="postal-code"]    text=6100
    Click Button    locator=//*[@id="continue"]
    Sleep    0.5s
    Click Button    locator=//*[@id="finish"]