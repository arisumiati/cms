* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulUserManagement/ModulFilterUserManagement.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario

*** Test Cases ***
Verify E2E Filter Kombinasi Valid (Happy Path)
    [Documentation]     TC_FLT_001
    Sleep    5s
    Go To    ${BASE_URL}master-data/users
    Click Filter Button
    Sleep    0.5s
    Input Status Filter
    Click Tampilkan Filter
    Sleep    1s

Verify Filter Berdasarkan Single Field Text
    [Documentation]     TC_FLT_002
    Sleep      5s
    Go To      ${BASE_URL}master-data/users
    Click Filter Button
    Sleep      0.5s
    Input Filter Berdasarkan Nama
    Click Tampilkan Filter
    Sleep      1s

Verify Filter Berdasarkan Dropdown
    [Documentation]     TC_FLT_003
    Sleep       5s
    Go To       ${BASE_URL}master-data/users
    Click Filter Button
    Sleep       0.5s
    Input Filter Berdasarkan Status & Role
    Click Tampilkan Filter
    Sleep      1s

Verify Filter Pencarian Partial
    [Documentation]     TC_FLT_004
    Sleep       5s
    Go To       ${BASE_URL}master-data/users
    Click Filter Button
    Sleep       0.5s
    Input Filter Berdasarkan Partial
    Click Tampilkan Filter
    Sleep      1s

Verify Reset Filter Menggunakan Tombol Hapus
    [Documentation]     TC_FLT_005
    Sleep       5s
    Go To       ${BASE_URL}master-data/users
    Click Filter Button
    Sleep       0.5s
    Input Status Filter
    Click Hapus Filter
    Click Filter Button
    Sleep       1s

Verify Filter Data Tidak Ditemukan
    [Documentation]     TC_FLT_006
    Sleep       5s
    Go To       ${BASE_URL}master-data/users
    Click Filter Button
    Sleep       0.5s
    Input Filter invalid
    Click Tampilkan Filter
    Sleep       1s

Verify Input Injection Check
    [Documentation]     TC_FLT_007
    Sleep       5s
    Go To       ${BASE_URL}master-data/users
    Click Filter Button
    Sleep       0.5s
    Input Filter Injection
    Click Tampilkan Filter
    Sleep       1s