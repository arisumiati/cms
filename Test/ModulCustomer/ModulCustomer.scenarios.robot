* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulCustomer/locator/ModulCustomer.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Add Customer Perorangan Regular
    [documentation]  This test case verifies that user is able to show list data mou
    [tags]  show
    Sleep    5s
    Go To    ${BASE_URL}v2/customers
    Click Button Add Customer
    Input Step Customer
    Click Button Selanjutnya
    Input Step Bank
    Click Button Selanjutnya
    Input Step Other
    Click Button Simpan


