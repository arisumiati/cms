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
# Verify Successful Update of Existing Auction Data Across All Tabs 
#    [Documentation]     TC-ED-001 Verify Successful Update of Existing Auction Data Across All Tabs (Pre-populated Flow)
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#
#    Edit Lelang
#    Sleep    2s
#    Edit Data Tab Ringkasan
#    Sleep    1s
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Edit Tab Ringkasan
#    Sleep    3s
#
#    Edit Lelang
#    Sleep    2s
#    Edit Data Tab Objek Lelang
#    Sleep    1s
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Objek Lelang
#    Sleep    3s
#
#    Edit Lelang
#    Sleep    2s
#    Edit Data Tab Bidder
#    Sleep    1s
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Bidder
#    Sleep    4s
#
#Verify Successful Auction ID Field Is Disabled
#    [Documentation]    TC-ED-RG-001 Verify Auction ID Field Is Read-Only During Edit Mode
#    Sleep   5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#
#    Edit Lelang
#   Sleep   2s
#    
#    Verify Auction ID Field Is Disabled
#    Sleep   4s
#
# Verify Updating Admin Fee Method from Fixed to Percentage Mode
#    [Documentation]     TC-ED-RG-002 - Ubah Admin Fee ke Persentase
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#
#    Edit Lelang
#    Sleep    2s
#    
#    Edit Data Tab Ringkasan Persentase
#    Sleep    1s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Edit Tab Ringkasan
#    Sleep    3s
#
# Verify Mandatory Regular Checkbox Validation Remains Enforced During Edit
#    [Documentation]     TC-ED-RG-003 - Hapus centang customer regular dan pastikan error validasi muncul saat simpan
#    [Tags]              P1-High    Tab-Ringkasan    Negative-Test
#    
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#
#    Edit Lelang
#    Sleep    2s
#
#    Uncheck Customer Regular Checkbox
#    Sleep    1s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Edit Tab Ringkasan
#    Sleep    1s
#
# Verify Successful Removal of Existing Unit Item from Auction List
#    [Documentation]     TC-ED-OL-001 Verify Successful Removal of Existing Unit Item from Auction List
#    
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#
#    Edit Lelang
#    Sleep    2s
#
#    Hapus Objek Lelang Baris Pertama
#    Sleep    1s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Objek Lelang
#    Sleep    1s
#
# Verify Adding New Unit Items to an Existing Auction
#    [Documentation]     TC-ED-OL-002 Verify Adding New Unit Items to an Existing Auction  
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang
#    
#    Edit Lelang
#    Sleep    2s
#
#    Tambah Objek Lelang Baru
#    Sleep    1s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Objek Lelang
#    Sleep    3s
#
# Verify Adding New Group Bidder to an Existing Auction
#    [Documentation]     TC-ED-BD-002 Verify Adding New Group Bidder to an Existing Auction
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#
#    Edit Lelang
#    Sleep   2s
#
#    Tambah Group Bidder Baru
#    Sleep   1s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Bidder
#    Sleep   3s
#
# Verify Successful Removal of Existing Bidder Row
#    [Documentation]     TC-ED-BD-003 Verify Successful Removal of Existing Bidder Row
#    Sleep   5s
#    Go To   ${BASE_URL}lelang/list-lelang
#
#    Edit Lelang
#    Sleep   2s
#
#    Hapus Bidder Edit
#    Sleep   1s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Bidder
#    Sleep   3s
#
# Verify Canceling Edit Action Discards All Unsaved Changes
#    [Documentation]     TC-ED-UI-001 Verify Canceling Edit Action Discards All Unsaved Changes
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#
#    Edit Lelang
#    Sleep    2s
#
#    Batal Edit Lelang Dan Verifikasi Data Awal
#
#    Wait Until Element Is Visible    ${btn_batal_edit}              timeout=10s
#    Click Element                    ${btn_batal_edit}
#    Sleep    2s
#
# Verify Create Bundle Unit Successful Tab Objek
#    [Documentation]     TC-ED-BDL-001 Verify Create Bundle Unit Successful Tab Objek
#    Sleep    5s
#    Go To    ${BASE_URL}lelang/list-lelang    
#
#    Edit Lelang
#    Sleep    2s
#
#    Tambah Objek Lelang Baru
#    Sleep    1s
#
#    Buat Bundle Unit Objek Lelang
#   Sleep    1s
#
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Objek Lelang
#    Sleep    3s
*** Test Cases ***
Verify Successful Update of Existing Auction Data Across All Tabs 
    [Documentation]     TC-ED-001 Verify Successful Update of Existing Auction Data Across All Tabs (Pre-populated Flow)
    Sleep    5s
    Go To    ${BASE_URL}lelang/list-lelang    

#    Edit Lelang
#    Sleep    2s
#    Edit Data Tab Ringkasan
#    Sleep    1s
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Edit Tab Ringkasan
#    Sleep    3s

    Edit Lelang
    Sleep    2s
    Edit Data Tab Objek Lelang
    Sleep    1s
    Click Simpan Lelang Tab Ringkasan
    Click Pop Up Konfirmasi notification Update Objek Lelang
    Sleep    3s

#    Edit Lelang
#    Sleep    2s
#    Edit Data Tab Bidder
#    Sleep    1s
#    Click Simpan Lelang Tab Ringkasan
#    Click Pop Up Konfirmasi notification Update Bidder
#    Sleep    4s