*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResult.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Search for Product
    LandingPage.Load
    LandingPage.Verify Page Load
    TopNav.Search for Product
    SearchResult.Search Result Contain Product

Select Product from search result
    Product.Select Product

Add product to Cart
    Cart.Choose Product To Cart

Begin checkout
    SignIn.Go to sign in page to checkout

