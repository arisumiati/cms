* Settings *
Documentation   modul bidding log
Library          SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulBlackListCustomer/ModulFilterBlackList.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
Verify Filter Data by Status Aktif Only
    Sleep   3s
    Go To   ${BASE_URL}master-data/blacklist-customers
    Klik Button Filter
    Pilih Filter Status Aktif
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Filter Data by Nama Bank Only
    Sleep   3s
    Go To   ${BASE_URL}master-data/blacklist-customers
    Klik Button Filter
    Pilih Nama Bank Mandiri
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Filter Data using Multiple Criteria
    Sleep   3s
    Go To   ${BASE_URL}master-data/blacklist-customers
    Klik Button Filter
    Pilih Filter Multiple
    Klik Button Tampilkan Filter
    Sleep   1s

Verify Reset Filter Selection
    Sleep   3s
    Go To   ${BASE_URL}master-data/blacklist-customers
    Klik Button Filter
    Pilih Filter Multiple
    Klik Button Hapus
    Klik Button Filter
    Sleep   1s

Verify Functionality in Combination
    Sleep   3s
    Go To   ${BASE_URL}master-data/blacklist-customers
    Klik Button Filter
    Pilih Filter Status Aktif
    Klik Button Tampilkan Filter
    Search Data
    Sleep   1s

Verify Filter Result No Data
    Sleep   3s
    Go To   ${BASE_URL}master-data/blacklist-customers
    Klik Button Filter
    Pilih Filter Multiple Invalid
    Klik Button Tampilkan Filter
    Sleep   1s