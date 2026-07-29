* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulLelang/locator/FilterLelang.resource.robot
Resource          ../../resources/ModulLelang/locator/ModulLelang.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
# Verify E2E Filter Kombinasi Valid (Happy Path)
#    [Documentation]     TC_FLT_002 Filter Lelang
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#    
#    Click Filter
#    Input Filter
#    Sleep   6s

# Verify Filter Berdasarkan Single Field Lelang ID
#    [Documentation]    TC_FLT_003 Filter Berdasarkan Single Field (Lelang ID)
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#
#    Click Filter
#    Input Filter Berdasarkan lelang_id
#    Sleep   6s

# Verify Filter Berdasarkan Pencarian Partial/Substring Nama Lelang
#    [Documentation]    TC_FLT_004 Pencarian Partial/Substring Nama Lelang
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#
#    Click Filter
#    Input Filter Berdasarkan Nama Lelang Partial
#    Sleep   6s

# Verify Filter Rentang Waktu (Waktu Mulai Lelang)
#    [Documentation]    TC_FLT_005 Filter Rentang Waktu (Waktu Mulai Lelang)
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#
#    Click Filter
#    Input Filter Berdasarkan Waktu Mulai Lelang
#    Sleep   6s

# Verify Reset Filter menggunakan Tombol Hapus
#    [Documentation]    TC_FLT_006 Reset Filter menggunakan Tombol Hapus
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#
#    Click Filter
#    Sleep    2s
#
#    Reset Filter Lelang Dan Verifikasi Data Awal
#
#    Wait Until Element Is Visible    ${filter_btn_hapus}              timeout=10s
#    Click Element                    ${filter_btn_hapus}
#    Sleep    2s

# Verify Filter dengan Waktu Wanpres Lelang
#    [Documentation]    TC_FLT_007 Filter dengan Waktu Wanpres Lelang
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#
#    Click Filter
#    Input Filter Berdasarkan Waktu Wanpres Lelang
#    Sleep   6s

# Verify Filter Data Tidak Ditemukan (Empty State)
#    [Documentation]    TC_FLT_008 Filter Data Tidak Ditemukan (Empty State)
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#
#    Click Filter
#    Input Invalid Filter Berdasarkan lelang_id
#    Sleep   6s

# Verify Filter Input Karakter Spesial / Injection Check
#    [Documentation]    TC_FLT_009 Input Karakter Spesial / Injection Check
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#
#    Click Filter
#   Input Karakter Spesial Nama Lelang
#    Sleep   6s

# Verify Pengujian UAT / Responsive Modal UI
#    [Documentation]    TC_FLT_011 Pengujian UAT / Responsive Modal UI
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#
#    Click Filter
#    Verifikasi Tampilan UI Modal Filter
#    Sleep   5s

# Verify Tutup Modal Tanpa Menerapkan Filter
#    [Documentation]    TC_FLT_012 Tutup Modal Tanpa Menerapkan Filter
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#
#    Click Filter
#    Sleep    2s
#
#    Reset Filter Lelang Dan Verifikasi Data Awal
#
#    Wait Until Element Is Visible    ${filter_btn_hapus}              timeout=10s
#    Click Element                    ${filter_btn_hapus}
#    Sleep    2s
*** Test Cases ***