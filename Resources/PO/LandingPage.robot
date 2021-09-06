*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Load
    Go To  ${START_URL}
    Maximize Browser Window

Verify Page Load
    Wait Until Element Is Enabled  id=twotabsearchtextbox