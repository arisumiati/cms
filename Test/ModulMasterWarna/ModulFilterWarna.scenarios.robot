* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulMasterWarna/locator/ModulFilterWarna.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify Search Data by Keyword
    [Documentation]     TC-SFW-001
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Search Data
    Sleep   1s

Verify Search Data when No Match Found
    [Documentation]     TC-SFW-002
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Search Data Invalid
    Sleep   1s

Verify Filter Data by Status Aktif Only
    [Documentation]     TC-SFW-003
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Klik Button Filter
    Input Data Filter
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Filter Data by Objek Lelang Only
    [Documentation]     TC-SFW-004
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Klik Button Filter
    Input Data Filter Objek Lelang
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Filter Data using Multiple Criteria
    [Documentation]     TC-SFW-005
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Klik Button Filter
    input Data Multiple
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Clear Filter Selection
    [Documentation]     TC-SFW-006
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Klik Button Filter
    input Data Multiple
    Klik Button Hapus Filter
    Klik Button Filter
    Sleep   1s

Verify Search Bar Functionality
    [Documentation]     TC-SFW-007
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Klik Button Filter
    Input Data Filter
    Klik Button Tampilkan Filter
    Search Data Multiple
    Sleep   1s

Verify Filter Data using Multiple Criteria Invalid
    [Documentation]     TC-SFW-005
    Sleep   3s
    Go To   ${BASE_URL}master-data/colors
    Klik Button Filter
    input Data Multiple Invalid
    Klik Button Tampilkan Filter
    Sleep   1s