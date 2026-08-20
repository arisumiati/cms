* Settings *
Documentation  modul objek lelang bike
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/modulMasterMerek/locator/ModulFilterTipe.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
#Verify Search Data by Keyword
#    [Documentation]     TC-SFTP-001
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/tipe
#    Search Data Tipe
#    Sleep   1s

#Verify Search Data when No Match
#    [Documentation]     TC-SFTP-002
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/tipe
#    Search Data Invalid Tipe
#    Sleep   1s

#Verify Filter Data by Status Aktif Only
#    [Documentation]     TC-SFTP-003
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/tipe
#    Klik Button Filter Tipe
#    Input Filter Status Only
#    Klik Button Tampilkan Tipe
#    Sleep   1s

#Verify Filter Data by Objek Lelang Only
#    [Documentation]     TC-SFTP-004
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/tipe
#    Klik Button Filter Tipe
#    Input Filter Objek Lelang Only
#    Klik Button Tampilkan Tipe
#    Sleep   1s

#Verify Filter Data by Merek Only
#    [Documentation]     TC-SFTP-005
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/tipe
#    Klik Button Filter Tipe
#    Input Filter Merek Only
#    Klik Button Tampilkan Tipe
#    Sleep   1s

#Verify Filter Data by Merek Dropdown
#    [Documentation]     TC-SFTP-006
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/tipe
#    Klik Button Filter Tipe
#    Input Filter Model Only
#    Klik Button Tampilkan Tipe
#    Sleep   1s

#Verify Filter Data Multiple Criteria
#    [Documentation]     TC-SFTP-007
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/tipe
#    Klik Button Filter Tipe
#    Input Filter Multiple
#    Klik Button Tampilkan Tipe
#    Sleep   1s

#Verify Reset Filter 
#    [Documentation]     TC-SFTP-008
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/tipe
#    Klik Button Filter Tipe
#    Input Filter Multiple
#    Klik Button Hapus Filter
#    Klik Button Filter Tipe
#    Sleep   1s

#Verify Search Bar in Combination
#    [Documentation]     TC-SFTP-008
#    Sleep   3s
#    Go TO   ${BASE_URL}master-data/tipe
#    Klik Button Filter Tipe
#    Input Filter Model Only
#    Klik Button Tampilkan Tipe
#    Search Data Tipe
#    Sleep   1s