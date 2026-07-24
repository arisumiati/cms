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

# Verify Admin Fee Auto Set To Zero When Free Admin Fee Is Checked
#    [Documentation]    Skenario: Memastikan Admin Fee otomatis ter-override dari Rp 250.000 menjadi 0 saat Free Admin Fee dicentang.
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
#    Click Pop Up Konfirmasi
#    Sleep    4s

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
#    [Documentation]    TC-BD-005: Verifikasi hapus objek lelang dari menu Edit.
#    Sleep      5s
#    Go To    ${BASE_URL}lelang/list-lelang
#    
#    # 1. Navigasi ke Halaman Edit -> Tab Objek Lelang
#    Go To Edit Objek Lelang
#    
#    # 2. Panggil Keyword Hapus Objek Lelang yang Sudah Berhasil Sebelumnya
#    Delete Objek Lelang Row And Confirm
#    Sleep    2s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi
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
#    [Documentation]    TC-BD-005: Verifikasi hapus objek Bidder dari menu Edit.
#    Sleep      5s
#    Go To    ${BASE_URL}lelang/list-lelang
#    
#    Go To Edit Objek Bidder
#    
#    Delete Objek Bidder Row And Confirm
#    Sleep    2s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi
#    Sleep    4s
*** Test Cases ***
Verify Objek Lelang with Free Admin Fee Applied
    [Documentation]    Skenario Positive: Berhasil menyimpan lelang dengan Free Admin Fee.
    Sleep    5s
    Go To    ${BASE_URL}lelang/list-lelang    
    Click Tambah Lelang
    Input List Lelang Ringkasan
    Sleep    2s
    
    Input Objek Lelang
    Sleep    2s
    Input Admin Fee Per Objek Lelang
    Click Simpan Lelang Tab Objek Lelang
    Sleep    2s
    
#    Input Bidder
#    Sleep    2s

#    Input Group
#    Sleep    2s
    
    Click Simpan Lelang Tab Ringkasan
    Click Pop Up Konfirmasi
    Sleep    4s