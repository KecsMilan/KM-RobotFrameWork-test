# 1. Shopping cart functionality
#    Add mutiple products
#    Remove products from the shopping cart
#    Check the contents of the shopping cart

*** Settings ***
Library    Selenium2Library

*** Keywords ***
Success Login
    Open Browser    https://www.saucedemo.com/    firefox
    Sleep    time_=2s
    Input Text    locator=//*[@id="user-name"]    text=standard_user
    Input Password    locator=//*[@id="password"]    password=secret_sauce
    Sleep    time_=2s
    Click Element    locator=//*[@id="login-button"]

GoToCart
    Element Should Contain    locator=//*[@id="shopping_cart_container"]    expected=3
    Click Element    locator=//*[@class="shopping_cart_link"]

CheckCart
    [Arguments]    ${expected_counts}
    ${count_items}=    Get Element Count    locator=//*[@class="cart_item"]
    Should Be Equal As Numbers    ${count_items}    ${expected_counts}

Add multiple products
    Click Element    locator=//*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
    Click Element    locator=//*[@id="add-to-cart-sauce-labs-onesie"]
    Click Element    locator=//*[@id="add-to-cart-sauce-labs-bike-light"]
    GoToCart

Remove products
    GoToCart
    Click Element    locator=//*[@id="remove-sauce-labs-bolt-t-shirt"]
    Click Element    locator=//*[@id="remove-sauce-labs-onesie"]
    Click Element    locator=//*[@id="remove-sauce-labs-bike-light"]

*** Test Cases ***
Add multiple products
    Success Login
    Add multiple products

Remove products
    Success Login
    Add multiple products
    Remove products
    CheckCart    0

Checkcart content
    Success Login
    Add multiple products
    CheckCart    3
