* Settings *
Documentation  modul objek lelang elektronik
Library  SeleniumLibrary
Resource          ../../resources/ModulLogin/login_suite.robot
Resource          ../../resources/ModulObjekLelang/locator/UbahObjekLelang.resource.robot
Suite Setup        Run Keywords    Execute Login Scenario

*** Keywords ***
Execute Login Scenario
    Login Scenario

*** Test Cases ***
#Verify Ubah Status Aktif dari ON menjadi OFF
#    [Documentation]     TC-UB-001
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#
#    Select Objek Lelang
#    Sleep   3s
#
#    Input Search No Stok
#    Sleep   3s
#
#    Turn On Status Aktif Menjadi Off
#    Sleep   3s

#Verify Ubah Status Aktif dari OFF menjadi ON
#    [Documentation]     TC-UB-002
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#
#    Select Objek Lelang
#    Sleep   3s
#
#    Input Search No Stok
#    Sleep   3s
#
#    Turn Off Status Aktif Menjadi On
#    Sleep   3s

#Verify Ubah Status Aktif dari ON menjadi OFF View Detail
#    [Documentation]     TC-UB-001
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#
#    Select Objek Lelang
#
#    Input Search No Stok
#    Sleep   1s
#
#    Turn On Status Aktif Menjadi On View
#    Sleep   3s

#Verify Ubah Status Aktif dari OFF menjadi ON View Detail
#    [Documentation]     TC-UB-002
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#
#    Select Objek Lelang
#
#    Input Search No Stok
#    Sleep   1s
#
#    Turn Off Status Aktif Menjadi On View
#    Sleep   3s

#Verify Ubah Status Unit dari Available ke Booked
#    [Documentation]     TC-UB-003
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#
#   Select Objek Lelang
#
#    Input Search No Stok
#    Sleep   1s
#
#    Select Status Unit Booked
#    Sleep   3s

#Verify Ubah Status Unit dari Available ke Sold
#    [Documentation]     TC-UB-004
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#
#    Select Objek Lelang
#
#    Input Search No Stok Sold
#    Sleep   1s
#
#    Select Status Unit Sold
#    Sleep   3s

#Verify Ubah Status Unit dari Available ke Paid
#    [Documentation]     TC-UB-005
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#
#    Select Objek Lelang
#
#    Input Search No Stok Paid
#    Sleep   1s
#
#    Select Status Unit Paid
#    Sleep   3s

#Verify Ubah Status Unit dari Available ke Suspended
#    [Documentation]     TC-UB-006
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#
#    Select Objek Lelang
#
#    Input Search No Stok Suspended
#    Sleep   1s
#
#    Select Status Unit Suspended
#    Sleep   3s

#Verify Ubah Status Unit dari Available ke Returned
#    [Documentation]     TC-UB-007
#    Sleep   3s
#    Go To   ${BASE_URL}lelang/objek
#
#    Select Objek Lelang
#
#    Input Search No Stok Returned
#    Sleep   1s
#
#   Select Status Unit Returned
#    Sleep   3s
*** Test Cases ***
Verify Ubah Status Unit dari Paid ke Released
    [Documentation]     TC-UB-008
    Sleep   3s
    Go To   ${BASE_URL}lelang/objek

    Select Objek Lelang

    Input Search No Stok Released
    Sleep   1s

    Select Status Unit Released
    Sleep   3s