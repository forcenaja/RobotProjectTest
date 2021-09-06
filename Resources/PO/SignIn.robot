*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Go to sign in page to checkout
    Wait Until Page Contains  Added to Cart
    Click Link  id=hlb-ptc-btn-native
    Page Should Contain Element  id=authportal-main-section