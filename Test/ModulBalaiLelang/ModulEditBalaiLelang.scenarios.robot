* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulBalaiLelang/ModulEditBalaiLelang.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario

*** Test Cases ***
Verify Successful Update Balai Lelang Data
    [Documentation]     TC-MBL-001
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Search Field
    Edit Field Balai Lelang Dan Cabang
    Click Button Simpan Edit Modal
    Sleep   1s

Validasi Duplikasi Balai Lelang Edit
    [Documentation]     TC-MBL-001
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Search Field Duplicate
    Edit Field Balai Lelang Dan Cabang
    Click Button Simpan Edit Modal Duplicate
    Sleep   1s

Verify Clear All Lot Disable in Lane Car
    [Documentation]     TC-MBL-001
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Search Field
    Clear All Lot Disable Lane Car
    Click Button Simpan Edit Modal
    Sleep   1s

Verify Edit Lane Car dan Bike and Lot Disable
    [Documentation]     TC-MBL-001
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Edit Lane Dan Lot From Excel