* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/modulMasterMerek/locator/ModulFilterMerek.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify Search Data by Keyword
    [Documentation]     TC-SFM-001
    Sleep   3s
    Go TO   ${BASE_URL}master-data/merek
    Search Merek
    Sleep   1s

Verify Search Data when No Match Found
    [Documentation]     TC-SFM-002
    Sleep   3s
    Go TO   ${BASE_URL}master-data/merek
    Klik Button Filter
    Input Filter Invalid
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Filter Data by Status Aktif Only
    [Documentation]     TC-SFM-003
    Sleep   3s
    Go TO   ${BASE_URL}master-data/merek
    Klik Button Filter
    Input Filter Status
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Filter Data by Objek Lelang Only
    [Documentation]     TC-SFM-004
    Sleep   3s
    Go TO   ${BASE_URL}master-data/merek
    Klik Button Filter
    Input Filter Objek Lelang
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Filter Data by Merek Name
    [Documentation]     TC-SFM-005
    Sleep   3s
    Go TO   ${BASE_URL}master-data/merek
    Klik Button Filter
    Input Filter
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Filter Data using Multiple Criteria
    [Documentation]     TC-SFM-006
    Sleep   3s
    Go TO   ${BASE_URL}master-data/merek
    Klik Button Filter
    input filter multiple
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Reset Filter
    [Documentation]     TC-SFM-007
    Sleep   3s
    Go TO   ${BASE_URL}master-data/merek
    Klik Button Filter
    input filter multiple
    Klik Button Hapus Filter
    Klik Button Filter
    Sleep   1s

Verify Search Bar in Combination
    [Documentation]     TC-SFM-008
    Sleep   3s
    Go TO   ${BASE_URL}master-data/merek
    Klik Button Filter
    Input Filter Objek Lelang
    Klik Button Tampilkan Filter
    Search Merek
    Sleep   1s