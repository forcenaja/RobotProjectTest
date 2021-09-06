*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for Product
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}
    Click Button  id=nav-search-submit-button