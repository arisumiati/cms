* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/modulMasterMerek/locator/ModulFilterModel.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
#Verify Search Data by Keyword
#    [Documentation]     TC-SFMD-001
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/model
#    Search Data Model
#    Sleep   1s

#Verify Search Data No Match Found
#    [Documentation]     TC-SFMD-002
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/model
#    Search Data Model Invalid
#    Sleep   1s

#Verify Filter Data by Status Aktif Only
#    [Documentation]     TC-SFMD-003
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/model
#    Klik Button Filter
#    Input Filter Status
#    Klik Button Tampilkan Filter
#    Sleep   1s

#Verify Filter Data by Objek Lelang Only
#    [Documentation]     TC-SFMD-004
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/model
#    Klik Button Filter
#    Input Filter Objek Lelang
#    Klik Button Tampilkan Filter
#    Sleep   1s

#Verify Filter Data by Merek Dropdown Only
#    [Documentation]     TC-SFMD-005
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/model
#    Klik Button Filter
#    Input Filter Objek Lelang
#    Input Filter Merk
#    Klik Button Tampilkan Filter
#    Sleep   1s

#Verify Filter Data by Model
#    [Documentation]     TC-SFMD-006
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/model
#    Klik Button Filter
#    Input Filter Model
#    Klik Button Tampilkan Filter
#    Sleep   1s

#Verify Filter Data using Multiple Criteria
#    [Documentation]     TC-SFMD-007
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/model
#    Klik Button Filter
#    Input Filter Status
#    Input Filter Objek Lelang
#    Input Filter Merk
#    Input Filter Model
#    Klik Button Tampilkan Filter
#    Sleep   1s

#Verify Reset Filter
#    [Documentation]     TC-SFMD-008
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/model
#    Klik Button Filter
#    Input Filter Status
#    Input Filter Objek Lelang
#    Input Filter Merk
#    Input Filter Model
#    Klik Button Hapus Filter
#    Klik Button Filter
#    Sleep   1s

#Verify Search in Combination
#    [Documentation]     TC-SFMD-009
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/model
#    Klik Button Filter
#    Input Filter Objek Lelang
#    Input Filter Merk
#    Klik Button Tampilkan Filter
#    Search Data Model
#    Sleep   1s

Verify Toggle Status Aktif from ON to OFF
    [Documentation]     TC-TSMD-001
    Sleep   3s
    Go TO   ${BASE_URL}master-data/model
    Search Data Model
    Ubah Status Toggle Menjadi OFF
    Sleep   1s

Verify Toggle Status Aktif from OFF to ON
    [Documentation]     TC-TSMD-002
    Sleep   3s
    Go TO   ${BASE_URL}master-data/model
    Search Data Model
    Ubah Status Toggle Menjadi ON
    Sleep   1s