* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorListWarna.py

*** Keywords ***
Search Data Warna
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    Click Element                    ${input_search}
    Press Keys                       ${input_search}    CTRL+a    BACKSPACE
    Input Text                       ${input_search}    ${search_warna}
    Press Keys                       ${input_search}    RETURN
    Sleep                            1s

Ubah Switch Status Menjadi OFF
    Wait Until Element Is Visible    ${switch_status}    timeout=10s
    Wait Until Element Is Enabled    ${switch_status}    timeout=10s

    ${state}=    Get Element Attribute    ${switch_status}    data-state
    IF    '${state}' == 'checked'
        Click Element    ${switch_status}
        Sleep            0.5s
    END

Ubah Switch Status Menjadi ON
    Wait Until Element Is Visible    ${switch_status}    timeout=10s
    Wait Until Element Is Enabled    ${switch_status}    timeout=10s

    ${state}=    Get Element Attribute    ${switch_status}    data-state
    IF    '${state}' != 'checked'
        Click Element    ${switch_status}
        Sleep            0.5s
    END

Konfirmasi Ubah Status
    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Visible        ${toast_success_update_status_warna}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_update_status_warna}    timeout=10s
    Sleep    0.5s