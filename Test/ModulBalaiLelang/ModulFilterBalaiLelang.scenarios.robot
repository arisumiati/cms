* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulBalaiLelang/ModulFilterBalaiLelang.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario

*** Test Cases ***
Verify Filter Data by Balai Lelang Only
    [Documentation]     TC-MBL-FLT-001
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Open Filter
    Input Filter
    Klik Button Tampilkan
    Sleep   1s

Verify Filter Data by Cabang Balai Lelang Only
    [Documentation]     TC-MBL-FLT-002
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Open Filter
    Input Filter Cabang
    Klik Button Tampilkan
    Sleep   1s

Verify Filter Multiple Criteria 
    [Documentation]     TC-MBL-FLT-003
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Open Filter
    Input Filter
    Input Filter Cabang
    Klik Button Tampilkan
    Sleep   1s

Verify Reset Filter Selection
    [Documentation]     TC-MBL-FLT-004
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Open Filter
    Input Filter
    Input Filter Cabang
    Klik Button Hapus
    Sleep   1s

Verify Search Bar Functionality
    [Documentation]     TC-MBL-FLT-005
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Search Balai Lelang
    Sleep   1s

Verify Filter Result No Data Matches
    [Documentation]     TC-MBL-FLT-006
    Sleep   5s
    Go To   ${BASE_URL}master-data/balai-lelang
    Search Balai Lelang Invalid
    Sleep   1s