*** Settings ***
Library    Selenium2Library
Library    Collections
Resource    login_Keyword.robot

*** Keywords ***
Get Product by Name
    [Arguments]    ${product_name}

    @{products}=    Get WebElements    xpath=//*[@data-test="inventory-item-name"]

    FOR    ${element}    IN    @{products}
        ${text}=    Get Text    ${element}
        IF    $text == $product_name
            Click Element    ${element}
            RETURN
        END
    END

    Fail    Product not found

Get Product by Pics
    [Arguments]    ${product_picsURL}

    @{products}=    Get WebElements    xpath=//img[@class="inventory_item_img"]

    FOR    ${element}    IN    @{products}
        ${url}=    Get Element Attribute    ${element}    src
        IF    $product_picsURL in $url
            Click Element    ${element}
            RETURN
        END
    END
    Fail    Product not found

Verify Is the price same
    [Arguments]    ${product_price}

    @{products}=    Get WebElements    xpath=//*[@data-test="inventory-item-price"]

    FOR    ${element}    IN    @{products}
        ${price}=    Get Text    ${element}
        Click Element    ${element}
        IF    $price == $product_price
            RETURN
        END
    END

    Fail    Product not found

Verify description visiable
    Click Element    //*[@id="item_4_title_link"]/div
    Element Should Be Visible    //*[@data-test="inventory-item-desc"]

Verify pics visiable
    Click Element    //*[@id="item_4_title_link"]/div
    Element Should Be Visible    //*[@data-test="item-sauce-labs-backpack-img"]

*** Test Cases ***
Open product page by name
    Success Login
    Get Product by Name    Sauce Labs Backpack

Open product page by Pics
    Success Login
    Get Product by Pics    bike-light-1200x1500.37c843b09a7d77409d63.jpg
    
Verify whether the same price is
    Success Login
    Verify Is the price same    $7.99

Verify whether the description is visiable
    Success Login
    Verify description visiable

Verify whether the pics is visiable
    Success Login
    Verify pics visiable

Back to products
    Success Login
    Verify pics visiable
    Click Button    locator=//*[@id="back-to-products"]

