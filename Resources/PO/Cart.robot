*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Choose Product To Cart
    Wait Until Page Contains  Add to Cart
    Click Button  id=add-to-cart-button