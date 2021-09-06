*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Suite Setup  Start Testing
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  End Testing

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  acer aspire 5
@{MyList}  =  Hello their  This is  That is

*** Test Cases ***
Test cases 1
    [Documentation]  This is some basic info about the test
    [Tags]  smoke
    Amazon.Search for Product
    Amazon.Select Product from search result
    Amazon.Add product to Cart
    Amazon.Begin checkout

Test cases 2
    [Tags]  Test
    Amazon.search for Product

Test cases 3
    [Tags]  Test3
    ${my_new_variable} =  Set Variable  Setup
    Log  ${my_new_variable}

Test cases 4
    [Tags]  Test4
    Log  ${MyList}[0]
