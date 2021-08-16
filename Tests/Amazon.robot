*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  smoke
    Open Browser  http://www.amazon.com  ${browser}
    Maximize Browser Window
    Wait Until Element Is Enabled  id=twotabsearchtextbox
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  id=nav-search-submit-butt
    Wait Until Page Contains  results for "Ferrari 458"
    Close Browser
*** Keywords ***
