* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulLelang/locator/ModulLelang.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
# Verify Successful Create Data List Lelang Reguler
#     [documentation]  This test case verifies that user is able to show list data mou
#     [tags]  show
#     Sleep     5s
#     Go To    ${BASE_URL}v2/auctions
#     Click Tambah Lelang
#     Input List Lelang Ringkasan
#     Sleep    3s
#     Input Objek Lelang
#     Click Simpan Lelang Tab Objek Lelang
#     Sleep    5s
#     Click Simpan Lelang Tab Ringkasan
#     Click Pop Up Konfirmasi
#     Sleep    4s
#     Click Pop Up Ya Mengerti
#     Sleep    3s
# Verify Successful Create Data List Lelang Reguler with Bidder
#     Click Modul List Lelang
#     Click Tambah Lelang
#     Input List Lelang Ringkasan
#     Sleep    3s
#     Input Objek Lelang
#     Sleep    3s
#     Input Bidder
#     Click Simpan Lelang Tab Bidder
#     Sleep    3s
#     Click Pop Up Konfirmasi
#     Sleep    4s
#     Click Pop Up Ya Mengerti
#     Sleep    3s
# Verify Successful Create Data List Lelang Reguler with Group Bidder
#     Click Modul List Lelang
#     Click Tambah Lelang
#     Input List Lelang Ringkasan
#     Sleep    3s
#     Input Objek Lelang
#     Sleep    3s
#     Input Group
#     Click Simpan Lelang Tab Bidder
#     Click Pop Up Konfirmasi
#     Sleep    4s
#     Click Pop Up Ya Mengerti
#     Sleep    3s
Verify Objek Lelang with Free Admin Fee Applied
    Sleep    5s
    Go To    ${BASE_URL}lelang/list-lelang  
    Click Tambah Lelang
    Input List Lelang Ringkasan
    Sleep    3s
    Input Objek Lelang
    Sleep    3s
    Input Admin Fee Per Objek Lelang
    Click Simpan Lelang Tab Objek Lelang
    Sleep    3s
    Click Simpan Lelang Tab Ringkasan
    Click Pop Up Konfirmasi
    Sleep    4s
    Click Pop Up Ya Mengerti
    Sleep    3s