* Settings *
Documentation  modul objek lelang elektronik
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulObjekLelang/locator/ModulObjekLelangElektronik.resource.robot
Resource          ../../resources/ModulObjekLelang/locator/FilterObjekLelang.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
# Verify E2E Filter Kombinasi Valid (Happy Path)
#    [Documentation]     TC-E2E-001
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang
#    Sleep   3s

# Verify Filter Berdasarkan Single Field (No Stok)
#    [Documentation]     TC_FLT_001
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang By No Stok
#    Sleep   3s

# Verify Pencarian Partial/Substring (Seller Name / No Polisi)
#    [Documentation]     TC_FLT_002
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang By Seller Name
#    Sleep   3s

# Verify Filter Rentang Waktu (Created Date)
#    [Documentation]     TC_FLT_003
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang By Created Date
#    Sleep   3s

# Verify Reset Filter Menggunakan Tombol Hapus
#    [Documentation]     TC_FLT_004
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Reset Filter
#    Sleep   3s

# Verify Filter Berdasarkan Dropdown Spesifik (Status Unit / Status Aktif)
#    [Documentation]     TC_FLT_005
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang By Status Unit
#    Sleep   3s

# Verify Filter Data Tidak Ditemukan (Empty State)
#    [Documentation]     TC_FLT_006
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang By Empty State
#    Sleep   3s

# Verify Filter Data Input Karakter Spesial / Injection Check
#    [Documentation]     TC_FLT_007
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang By Sql
#    Sleep   3s
*** Test Cases ***
Verify E2E Filter Kombinasi Valid (Happy Path)
    [Documentation]     TC-E2E-001
    Sleep   3s
    Go To   ${BASE_URL}lelang/objek
    Filter Objek Lelang
    Sleep   3s

Verify Filter Berdasarkan Single Field (No Stok)
    [Documentation]     TC_FLT_001
    Sleep   3s
    Go To   ${BASE_URL}lelang/objek
    Filter Objek Lelang By No Stok
    Sleep   3s

Verify Pencarian Partial/Substring (Seller Name / No Polisi)
    [Documentation]     TC_FLT_002
    Sleep   3s
    Go To   ${BASE_URL}lelang/objek
    Filter Objek Lelang By Seller Name
    Sleep   3s

Verify Filter Rentang Waktu (Created Date)
    [Documentation]     TC_FLT_003
    Sleep   3s
    Go To   ${BASE_URL}lelang/objek
    Filter Objek Lelang By Created Date
    Sleep   3s

Verify Reset Filter Menggunakan Tombol Hapus
    [Documentation]     TC_FLT_004
    Sleep   3s
    Go To   ${BASE_URL}lelang/objek
    Reset Filter
    Sleep   3s

Verify Filter Berdasarkan Dropdown Spesifik (Status Unit / Status Aktif)
    [Documentation]     TC_FLT_005
    Sleep   3s
    Go To   ${BASE_URL}lelang/objek
    Filter Objek Lelang By Status Unit
    Sleep   3s

Verify Filter Data Tidak Ditemukan (Empty State)
    [Documentation]     TC_FLT_006
    Sleep   3s
    Go To   ${BASE_URL}lelang/objek
    Filter Objek Lelang By Empty State
    Sleep   3s

Verify Filter Data Input Karakter Spesial / Injection Check
    [Documentation]     TC_FLT_007
    Sleep   3s
    Go To   ${BASE_URL}lelang/objek
    Filter Objek Lelang By Sql
    Sleep   3s