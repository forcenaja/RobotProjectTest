*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search Result Contain Product
    Wait Until Page Contains  results for "${SEARCH_TERM}"


