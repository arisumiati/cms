* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorEditWarna.py

* Keywords *
Search Value
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    Click Element                    ${input_search}
    Press Keys                       ${input_search}    CTRL+a    BACKSPACE
    Input Text                       ${input_search}    ${input_code}
    Press Keys                       ${input_search}    RETURN
    Sleep                            1s

    Klik Button Edit
    Sleep                            1s

Klik Button Edit
    Wait Until Element Is Visible    ${btn_edit}    timeout=10s
    Wait Until Element Is Enabled    ${btn_edit}    timeout=10s
    Click Element                    ${btn_edit}
    Sleep                            0.5s

Klik Simpan Data
    Wait Until Element Is Visible    ${btn_simpan}          timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan}          timeout=10s
    Click Element                    ${btn_simpan}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi }   timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi }   timeout=10s
    Click Element                    ${btn_ya_konfirmasi }

    Wait Until Element Is Visible        ${toast_success_update_warna }    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_update_warna }    timeout=10s
    Sleep    0.5s

Edit Warna
    Wait Until Element Is Visible    ${input_nama_warna}    timeout=10s
    Click Element                    ${input_nama_warna}
    Press Keys                       ${input_nama_warna}    CTRL+a    BACKSPACE
    Input Text                       ${input_nama_warna}    ${Edit_nama_warna}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_hex_warna}     timeout=10s
    Click Element                    ${input_hex_warna}
    Press Keys                       ${input_hex_warna}     CTRL+a    BACKSPACE
    Input Text                       ${input_hex_warna}     ${Edit_hex_warna}
    Sleep                            0.5s