*** Settings ***
Library    Selenium2Library
Resource    login_Keyword.robot

*** Keywords ***
Open checkout
    Success Login
    Click Element    //*[@data-test="shopping-cart-link"]
    Click Element    locator=//*[@id="checkout"]

Normal
    Input Text    locator=//*[@id="first-name"]    text=Joe
    Input Text    locator=//*[@id="last-name"]    text=Doe
    Input Text    locator=//*[@id="postal-code"]    text=2020
    Click Element    locator=//*[@id="continue"]

Null name
    Open checkout
    Input Text    locator=//*[@id="first-name"]    text=
    Input Text    locator=//*[@id="last-name"]    text=
    Input Text    locator=//*[@id="postal-code"]    text=2020
    Click Element    locator=//*[@id="continue"]

Null address
    Open checkout
    Input Text    locator=//*[@id="first-name"]    text=Joe
    Input Text    locator=//*[@id="last-name"]    text=Doe
    Input Text    locator=//*[@id="postal-code"]    text=
    Click Element    locator=//*[@id="continue"]

Null all of them
    Open checkout
    Input Text    locator=//*[@id="first-name"]    text=
    Input Text    locator=//*[@id="last-name"]    text=
    Input Text    locator=//*[@id="postal-code"]    text=
    Click Element    locator=//*[@id="continue"]

Long name
    Open checkout
    ${long_name}=    Evaluate    "A" * 100
    Input Text    locator=//*[@id="first-name"]    text=${long_name}
    Input Text    locator=//*[@id="last-name"]    text=Doe
    Input Text    locator=//*[@id="postal-code"]    text=2020
    Click Element    locator=//*[@id="continue"]

Invalid character
    Open checkout
    Input Text    locator=//*[@id="first-name"]    text=Jßoe
    Input Text    locator=//*[@id="last-name"]    text=Doe$
    Input Text    locator=//*[@id="postal-code"]    text=20¤20
    Click Element    locator=//*[@id="continue"]

Numbers in the name
    Open checkout
    Input Text    locator=//*[@id="first-name"]    text=Joe0
    Input Text    locator=//*[@id="last-name"]    text=0Doe
    Input Text    locator=//*[@id="postal-code"]    text=2020
    Click Element    locator=//*[@id="continue"]


*** Test Cases ***
Verify cancel checkout
    Open checkout
    Normal
    Click Element    locator=//*[@id="cancel"]

Verify null name
    Null name

Verify null address
    Null address

Verify null all of them
    Null all of them

Verify long name
    Long name

Verify invalid character
    Invalid character

Verify numbers in the name
    Numbers in the name
    
    