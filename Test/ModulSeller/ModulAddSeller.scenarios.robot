* Settings *
Documentation  modul bidding log
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulSeller/ModulAddSeller.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Sleep    5s
    Login Scenario


*** Test Cases ***
Verify Successful Add Seller with All Valid Fields
    [Documentation]     TC-SEL-001
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Click Tombol Add Seller
    Select Seller
    Click Confirm Seller
    Sleep       1s

Validasi Submit Form Tanpa Mengisi 
    [Documentation]     TC-SEL-003
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Click Tombol Add Seller
    Click Confirm Seller
    Validate Submit Empty Mandatory Fields
    Sleep       1s

Validasi Format File Attachment Tidak Sesuai
    [Documentation]     TC-SEL-004
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Click Tombol Add Seller
    Validate Invalid Attachment File Format
    Sleep       5s

Validasi Ukuran File Attachment
    [Documentation]     TC-SEL-004
    Sleep       5s
    Go To       ${BASE_URL}master-data/seller
    Click Tombol Add Seller
    Validate File Size Exceeds Limit
    Sleep       5s