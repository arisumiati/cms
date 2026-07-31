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

# Verify Objek Lelang with Multiple Bidder
#    [Documentation]    Skenario Positive: Berhasil Menambahkan Multiple Bidder
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#    Click Tambah Lelang
#    Input List Lelang Ringkasan
#    Sleep    2s
#    
#    Input Objek Lelang
#    Sleep    2s
#    
#    Input Admin Fee Per Objek Lelang
#    Sleep    1s
#
#    Verify Free Admin Fee Overrides Admin Fee To Zero
#    Sleep    1s
#
#    Click Simpan Lelang Tab Objek Lelang
#    Sleep    2s
#    
#    Input Multiple Bidders
#    Sleep    2s
#
#    Input Group
#    Sleep    2s
#    
#    # Simpan & Konfirmasi
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi
#    Sleep    4s

# Verify Delete Objek Row Action
# [Documentation]    TC-BD-004: Verifikasi hapus baris objek lelang berhasil dan terhapus dari tabel.
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang
#    Click Tambah Lelang
#    Input List Lelang Ringkasan
#    Sleep    2s
#
#    Input Objek Lelang
#    Sleep    2s
#
#    Delete Objek Lelang Row And Confirm
#    Sleep    2s

# Verify Delete Objek Lelang From Edit
#    [Documentation]    TC-BD-004: Verify Delete Objek Row Action
#    Sleep      5s
#    Go To    ${BASE_URL}lelang/list-lelang
#    
#    Go To Edit Objek Lelang
#    
#    Delete Objek Lelang Row And Confirm
#    Sleep    2s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Objek Lelang
#    Sleep    4s

# Verify Delete Objek Row Action Bidder
#    [Documentation]    TC-BD-004: Verify Delete Bidder Row Action
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang
#    Click Tambah Lelang
#    Input List Lelang Ringkasan
#    Sleep    2s
#
#    Input Bidder
#    Sleep    2s
#
#    Delete Objek Bidder Row And Confirm
#    Sleep    2s

# Verify Delete Objek Bidder From Edit
#    [Documentation]   TC-BD-004: Verify Delete Bidder Row Action
#    Sleep      5s
#    Go To    ${BASE_URL}lelang/list-lelang
#    
#    Go To Edit Objek Bidder
#    
#    Delete Objek Bidder Row And Confirm
#    Sleep    2s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Bidder
#    Sleep    4s

# Verify Objek Lelang with Fee Applied
#    [Documentation]    TC-E2E-001 Verify Successful Create Complete Lelang Reguler (All Tabs + Optional Logic)
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#    Click Tambah Lelang
#    Input List Lelang Ringkasan
#    Sleep    2s
#    
#    Input Objek Lelang
#    Sleep    2s
#    Input Admin Fee Per Objek Lelang
#    Click Simpan Lelang Tab Objek Lelang
#    Sleep    2s
#    
#    Input Bidder
#    Sleep    2s
#
#    Input Group
#    Sleep    2s
#    
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi Notification Success_buat_lelang
#    Sleep    4s

# Verify Admin Fee Auto Set To Zero When Free Admin Fee Is Checked
#    [Documentation]    TC-OL-001 Verify Objek Lelang with Free Admin Fee Applied
#    Sleep    3s
#   Go To    ${BASE_URL}lelang/list-lelang    
#    Click Tambah Lelang
#    
#    Input List Lelang Ringkasan
#    Sleep    1s
#   
#    Input Objek Lelang
#    Sleep    1s
#
#    Verify Free Admin Fee Overrides Admin Fee To Zero
#
#    Click Simpan Lelang Tab Objek Lelang
#    Sleep    2s
#    
#    Input Bidder
#    Sleep    2s
#
#   Input Group
#    Sleep    2s
#    
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi Notification Success_buat_lelang
#    Sleep    4s

#Verify Objek Lelang with Rekomendasi Flag Applied
#    [Documentation]   TC-OL-002 Verify Objek Lelang with Rekomendasi Flag Applied
#    Sleep    3s
#   Go To    ${BASE_URL}lelang/list-lelang    
#    Click Tambah Lelang
#    
#    Input List Lelang Ringkasan
#    Sleep    1s
#   
#    Input Objek Lelang
#    Sleep    1s
#
#    Input Admin Fee Per Objek Lelang
#    Sleep   1s
#
#    Click Checkbox Rekomendasi
#        
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi Notification Success_buat_lelang
#    Sleep    4s

# Verify Verify Objek Lelang Free Admin Fee Overrides Custom Admin Fee Logic
#    [Documentation]   TC-OL-002 Verify Objek Lelang Free Admin Fee Overrides Custom Admin Fee Logic
#    Sleep    3s
#   Go To    ${BASE_URL}lelang/list-lelang    
#    Click Tambah Lelang
#    
#    Input List Lelang Ringkasan
#    Sleep    1s
#   
#    Input Objek Lelang
#    Sleep    1s
#
#    Input Admin Fee Per Objek Lelang
#    Sleep   1s
#
#    Verify Free Admin Fee Overrides Admin Fee To Zero
#        
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi Notification Success_buat_lelang
#    Sleep    4s
*** Test Cases ***
Verify Admin Fee Auto Set To Zero When Free Admin Fee Is Checked
    [Documentation]    TC-OL-001 Verify Objek Lelang with Free Admin Fee Applied
    Sleep    3s
    Go To    ${BASE_URL}lelang/list-lelang    
    Click Tambah Lelang
    Input List Lelang Ringkasan
    Sleep    1s
   
    Input Objek Lelang
    Sleep    1s

    Verify Free Admin Fee Overrides Admin Fee To Zero

    Click Simpan Lelang Tab Objek Lelang
    Sleep    2s
    
    Input Bidder
    Sleep    2s

   Input Group
    Sleep    2s
    
    Click Simpan Lelang Tab Ringkasan
    Click Pop Up Konfirmasi Notification Success_buat_lelang
    Sleep    4s