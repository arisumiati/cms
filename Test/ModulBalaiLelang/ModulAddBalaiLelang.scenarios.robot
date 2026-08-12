* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulBalaiLelang/ModulAddBalaiLelang.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario

*** Test Cases ***
#Verify Master Add Lelang
#    [Documentation]     Add Lelang
#    Sleep    5s
#    Go To    ${BASE_URL}master-data/balai-Lelang
#    Search Loop Alamat Balai Lelang From Excel
#    Sleep    2s

Verify Successful Create Balai Lelang with Valid Data
    [Documentation]     TC-MBL-001
    Sleep     5s
    Go To     ${BASE_URL}master-data/balai-Lelang
    Click Button Tambah
    Input Field Balai Lelang
    Click Button Simpan Modal
    Sleep     1s

Validasi Trigger Error "Wajib diisi" Pada Field Mandatory
    [Documentation]     TC-MBL-002
    Sleep     5s
    Go To     ${BASE_URL}master-data/balai-Lelang
    Click Button Tambah
    Verify Mandatory Validation Errors
    Sleep     1s

Validasi Duplikasi Kombinasi Nama Balai Lelang & Cabang
    [Documentation]     TC-MBL-003
    Sleep     5s
    Go To     ${BASE_URL}master-data/balai-Lelang
    Click Button Tambah
    Verify Mandatory Validation Errors Duplication
    Sleep     1s