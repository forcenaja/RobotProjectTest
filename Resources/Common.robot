*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser

Start Testing
    Log  I am start testing

End Testing
    Log  I am cleaning up the test data