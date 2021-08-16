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
    Click Button  id=nav-search-submit-button
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  css=#search > div.s-desktop-width-max.s-desktop-content.s-opposite-dir.sg-row > div.s-matching-dir.sg-col-16-of-20.sg-col.s-results-column.sg-col-8-of-12.sg-col-12-of-16 > div.sg-col-inner > span.rush-component.s-latency-cf-section > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(3) > div > span > div > div > div > div:nth-child(1) > h2 > a
    Close Browser
*** Keywords ***
