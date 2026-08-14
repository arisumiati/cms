* Settings *
Documentation   modul bidding log
Library          SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulBlackListCustomer/ModulAddBlackList.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify field dengan format data yang valid
    [Documentation]     TC-BL-001
    Sleep   3s
    Go To    ${BASE_URL}master-data/blacklist-customers
    Klik Button Tambah
    Input Data Blacklist
    Klik Button Simpan
    Sleep   1s

Verify field dengan format Input data duplikat
    [Documentation]     TC-BL-002
    Sleep    3s
    Go To    ${BASE_URL}master-data/blacklist-customers
    Klik Button Tambah
    Input Data Blacklist
    Klik Button Simpan Already
    Sleep    1s

Verify field dengan format Input NIK kurang
    [Documentation]     TC-BL-003
    Sleep    3s
    Go To    ${BASE_URL}master-data/blacklist-customers
    Klik Button Tambah
    Validasi Error Format NIK Invalid
    Sleep    1s

Verify field dengan format Input NPWP kurang 
    [Documentation]     TC-BL-004
    Sleep    3s
    Go To    ${BASE_URL}master-data/blacklist-customers
    Klik Button Tambah
    Validasi Error Format NPWP Invalid
    Sleep    1s               