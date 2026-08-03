* Settings *
Documentation  modul objek lelang elektronik
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulObjekLelang/locator/ModulObjekLelangElektronik.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario


*** Test Cases ***
# Verify Add Objek Lelang Successful With Dokumen (Tanpa Foto Objek Lelang)
#    [Documentation]     TC-E2E-001
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang Electronic
#    Sleep   3s
#
#    Input Tambah Objek Lelang Unit
#    Input Tambah Objek Lelang Dokumen
#    Submit Form Objek Lelang
#    Sleep   2s

# Verify Add Objek Lelang Successful With Dokumen (Foto Objek Lelang)
#    [Documentation]    TC-E2E-002
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang Electronic
#    Sleep   3s
#
#    Input Tambah Objek Lelang Unit
#    Input Tambah Objek Lelang Dokumen
#    Upload Semua Foto Unit
#    Submit Form Objek Lelang
#    Sleep   2s

# Verify Add Objek Lelang Successful With Dokumen
#    [Documentation]     TC-E2E-003
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang Electronic
#    Sleep   3s
#
#    Input Tambah Objek Lelang Unit Tanpa Display
#    Input Tambah Objek Lelang Dokumen
#    Upload Semua Foto Unit
#    Submit Form Objek Lelang
#    Sleep   2s

# Verify Add Objek Lelang (Electronic) - Display Tipe AND Dropdown Merek/Model
#    [Documentation]     TC-E2E-004
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang Electronic
#    Sleep   3s
#
#    Input Tambah Objek Lelang Unit Tanpa Display Dell Latitude 5420 i7 Gen 11
#    Input Tambah Objek Lelang Dokumen
#    Upload Semua Foto Unit
#    Submit Form Objek Lelang
#    Sleep   2s

# Verify Validation When Mandatory Fields in Unit Tab Are Left Empty
#    [Documentation]     TC-VAL-001
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang Electronic
#    Sleep   1s
#
#    Wait Until Element Is Visible    ${btn_tambah_objek_lelang}      timeout=10s
#    Verify Mandatory Field Validation In Tab Unit

# Verify File Size Validation (> 2MB) in Dokumen Tab
#    [Documentation]     TC-VAL-004
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang Electronic
#    Sleep   1s
#
#    Input Tambah Objek Lelang Unit
#    Verify File Size Validation (> 2MB) In Tab Dokumen
#    Sleep   2s

# Verify Unsupported File Format in Dokumen Tab
#    [Documentation]     TC-VAL-005
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang Electronic
#    Sleep   1s
#
#    Input Tambah Objek Lelang Unit
#    Verify Unsupported File Format In Tab Dokumen
#    Sleep   2s

# Verify Update Detail Unit, Dokumen, and Foto Successfully (E2E Edit)
#    [Documentation]     TC-EDIT-002
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#    Filter Objek Lelang Electronic
#    
#    Search Edit Objek Lelang
#    Edit Objek Lelang Unit
#    Edit Objek Lelang Dokumen
#    Submit Edit Form Objek Lelang
#    Sleep   1s
*** Test Cases ***
