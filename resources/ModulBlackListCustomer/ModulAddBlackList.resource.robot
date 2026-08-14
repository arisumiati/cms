* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulBlackListCustomer/LocatorAddBlackList.py

* Keywords *
Klik Button Tambah
    Wait Until Element Is Visible    ${btn_tambah_data}    timeout=30s
    Click Element                    ${btn_tambah_data}

Klik Button Simpan
    Wait Until Element Is Visible    ${btn_simpan}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan}    timeout=10s
    Click Element                    ${btn_simpan}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}               timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_success_blacklist_customer}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_blacklist_customer}    timeout=10s
    Sleep    0.5s

Klik Button Simpan Already
    Wait Until Element Is Visible    ${btn_simpan}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan}    timeout=10s
    Click Element                    ${btn_simpan}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}               timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_error_duplicate_blacklist}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_error_duplicate_blacklist}    timeout=10s
    Sleep    0.5s

Input Data Blacklist
    Wait Until Element Is Visible    ${input_no_ponsel}    timeout=10s
    Click Element                    ${input_no_ponsel}
    Press Keys                       ${input_no_ponsel}    CTRL+a    BACKSPACE
    Input Text                       ${input_no_ponsel}    ${no_hp}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_email}        timeout=10s
    Click Element                    ${input_email}
    Press Keys                       ${input_email}        CTRL+a    BACKSPACE
    Input Text                       ${input_email}        ${email_address}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_nik}     timeout=10s
    Click Element                    ${input_nik}
    Press Keys                       ${input_nik}     CTRL+a    BACKSPACE
    Input Text                       ${input_nik}     ${nik}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_npwp}    timeout=10s
    Click Element                    ${input_npwp}
    Press Keys                       ${input_npwp}    CTRL+a    BACKSPACE
    Input Text                       ${input_npwp}    ${npwp}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dropdown_nama_bank}    timeout=10s
    Click Element                    ${dropdown_nama_bank}
    Sleep                            1s
    Wait Until Element Is Visible    ${option_bank_mandiri}   timeout=10s
    Click Element                    ${option_bank_mandiri}

    Wait Until Element Is Visible    ${input_nomor_rekening}  timeout=10s
    Click Element                    ${input_nomor_rekening}
    Press Keys                       ${input_nomor_rekening}  CTRL+a    BACKSPACE
    Input Text                       ${input_nomor_rekening}  ${no_rekening}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_notes}    timeout=10s
    Click Element                    ${input_notes}
    Press Keys                       ${input_notes}    CTRL+a    BACKSPACE
    Input Text                       ${input_notes}    ${notes}
    Sleep                            0.5s

Validasi Error Format NIK Invalid
    [Arguments]    ${nik_invalid}=0

    Wait Until Element Is Visible    ${input_nik}                timeout=10s
    Click Element                    ${input_nik}
    Press Keys                       ${input_nik}                CTRL+a    BACKSPACE
    Input Text                       ${input_nik}                ${nik_invalid}

    Press Keys                       ${input_nik}                TAB

    Wait Until Element Is Visible    ${err_format_nik_invalid}   timeout=10s
    Element Should Be Visible        ${err_format_nik_invalid}
    Sleep                            0.5s

Validasi Error Format NPWP Invalid
    Wait Until Element Is Visible    ${input_npwp}                timeout=10s
    Click Element                    ${input_npwp}
    Press Keys                       ${input_npwp}                CTRL+a    BACKSPACE
    Input Text                       ${input_npwp}                74444444444

    Press Keys                       ${input_npwp}                TAB

    Wait Until Element Is Visible    ${err_format_npwp_invalid}   timeout=10s
    Element Should Be Visible        ${err_format_npwp_invalid}
    Sleep                            0.5s