*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Select Product
    Sleep  3s
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/div[2]/div/div/div[1]/h2/a