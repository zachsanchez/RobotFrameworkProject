*** Settings ***
Documentation    Validate adding items to shopping cart on Target website
Library          SeleniumLibrary        timeout= 20s
Test Setup       Open Browser With url
Test Teardown    Close Browser Session
Resource         ../PO/Generic.robot

*** Variables ***



*** Test Cases ***

Verify Item Is Avalaible To Purchase
Verify Rating Is Over Certain Amount
End To End Adding Items To Shopping Cart