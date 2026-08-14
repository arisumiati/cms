* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorMasterWarna.py

* Keywords *
Klik Button Tambah Data
    Wait Until Element Is Visible    ${btn_tambah_data}    timeout=30s
    Wait Until Element Is Enabled    ${btn_tambah_data}    timeout=10s
    Click Element                    ${btn_tambah_data}
    Sleep                            0.5s

Klik Simpan Data
    Wait Until Element Is Visible    ${btn_simpan}          timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan}          timeout=10s
    Click Element                    ${btn_simpan}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}   timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}   timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Visible        ${toast_success_create_warna}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_create_warna}    timeout=10s
    Sleep    0.5s

Klik Simpan Data Invalid
    Wait Until Element Is Visible    ${btn_simpan}          timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan}          timeout=10s
    Click Element                    ${btn_simpan}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}   timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}   timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Visible        ${toast_error_hex_warna}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_error_hex_warna}    timeout=10s
    Sleep    0.5s

Klik Simpan Kode Warna Duplicate
    Wait Until Element Is Visible    ${btn_simpan}          timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan}          timeout=10s
    Click Element                    ${btn_simpan}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}   timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}   timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Visible        ${toast_error_duplicate_code}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_error_duplicate_code}    timeout=10s
    Sleep    0.5s

Input Tambah Warna  
    Wait Until Element Is Visible    ${dropdown_objek_lelang}    timeout=10s
    Click Element                    ${dropdown_objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_search_objek_lelang}   timeout=10s
    Click Element                    ${input_search_objek_lelang}
    Input Text                       ${input_search_objek_lelang}   ${objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_objek_lelang_car}     timeout=10s
    Click Element                    ${option_objek_lelang_car}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_kode_warna}    timeout=10s
    Click Element                    ${input_kode_warna}
    Press Keys                       ${input_kode_warna}    CTRL+a    BACKSPACE
    Input Text                       ${input_kode_warna}    ${kode_warna}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_nama_warna}    timeout=10s
    Click Element                    ${input_nama_warna}
    Press Keys                       ${input_nama_warna}    CTRL+a    BACKSPACE
    Input Text                       ${input_nama_warna}    ${input_warna}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_hex_warna}     timeout=10s
    Click Element                    ${input_hex_warna}
    Press Keys                       ${input_hex_warna}     CTRL+a    BACKSPACE
    Input Text                       ${input_hex_warna}     ${hex_warna}
    Sleep                            0.5s

Input Error Hex Warna Fields
    Wait Until Element Is Visible    ${dropdown_objek_lelang}    timeout=10s
    Click Element                    ${dropdown_objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_search_objek_lelang}   timeout=10s
    Click Element                    ${input_search_objek_lelang}
    Input Text                       ${input_search_objek_lelang}   ${objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_objek_lelang_car}     timeout=10s
    Click Element                    ${option_objek_lelang_car}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_kode_warna}    timeout=10s
    Click Element                    ${input_kode_warna}
    Press Keys                       ${input_kode_warna}    CTRL+a    BACKSPACE
    Input Text                       ${input_kode_warna}    ${kode_warna}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_nama_warna}    timeout=10s
    Click Element                    ${input_nama_warna}
    Press Keys                       ${input_nama_warna}    CTRL+a    BACKSPACE
    Input Text                       ${input_nama_warna}    ${input_warna}
    Sleep                            0.5s
    Wait Until Element Is Visible    ${input_hex_warna}     timeout=10s
    Click Element                    ${input_hex_warna}
    Press Keys                       ${input_hex_warna}     CTRL+a    BACKSPACE
    Input Text                       ${input_hex_warna}     ${hex_warna_invalid}
    Sleep                            0.5s
 
Validasi Error Mandatory Fields
    Wait Until Element Is Visible    ${btn_simpan}    timeout=10s
    Click Element                    ${btn_simpan}

    Wait Until Element Is Visible    ${err_wajib_diisi}    timeout=10s
    
    ${count}=    Get Element Count    ${err_wajib_diisi}
    Should Be True    ${count} >= 4    "Jumlah error 'Wajib diisi' kurang dari 4, harusnya ada error untuk setiap field!"