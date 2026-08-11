* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulSeller/ModulFilterSeller.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario


*** Test Cases ***
Verify Filter Data by Status Only
    [Documentation]     TC-FLT-001      Filter Seller
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Click Tombol All Filter
    Select Status In Status
    Click Tombol Apply Filter
    Sleep       1s

Verify Filter Data by Jenis Seller Only
    [Documentation]     TC-FLT-002     Filter Seller
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Click Tombol All Filter
    Select Status In Seller
    Click Tombol Apply Filter
    Sleep       1s

Verify Filter Data using Multiple Criteria
    [Documentation]     TC-FLT-003    Filter Seller
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Click Tombol All Filter
    Select Status In Status
    Select Status In Seller
    Click Tombol Apply Filter
    Sleep       1s

Verify Clear Filter Selection
    [Documentation]     TC-FLT-004   Filter Seller
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Click Tombol All Filter
    Select Status In Status

    Select Status In Seller
    Sleep       1s
    
    Click Tombol Clear Filter
    Click Tombol All Filter
    Sleep       1s

Verify Search Bar Functionality
    [Documentation]     TC-FLT-004   Filter Seller
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Search Seller Data
    Sleep       3s

Verify Filter Result No Data
    [Documentation]     TC-FLT-004   Filter Seller
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Search Seller Data Not Found
    Sleep       5s