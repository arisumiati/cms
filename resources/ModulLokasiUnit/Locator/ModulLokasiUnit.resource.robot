* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorModulLokasiUnit.py

* Keywords *
Klik Button Tambah
    Wait Until Element Is Visible    ${tambah_lokasi_unit}    timeout=30s
    Click Element                    ${tambah_lokasi_unit}
    Sleep                            0.5s

Klik Button Simpan 
    Wait Until Element Is Visible    ${simpan_lokasi_unit}    timeout=10s
    Click Element                    ${simpan_lokasi_unit}

    Wait Until Element Is Visible    ${konfirmasi_ya}   timeout=10s
    Click Element                    ${konfirmasi_ya}

    Wait Until Element Is Visible        ${toast_success_create_lokasi}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_create_lokasi}    timeout=10s
    Sleep    0.5s

Input Lokasi Unit Details
    Wait Until Element Is Visible    ${input_kode_lokasi_unit}    timeout=10s
    Click Element                    ${input_kode_lokasi_unit}
    Press Keys                       ${input_kode_lokasi_unit}    CTRL+a    BACKSPACE
    Input Text                       ${input_kode_lokasi_unit}    ${value_kode_lokasi_unit }

    Wait Until Element Is Visible    ${input_lokasi_unit}         timeout=10s
    Click Element                    ${input_lokasi_unit}
    Press Keys                       ${input_lokasi_unit}         CTRL+a    BACKSPACE
    Input Text                       ${input_lokasi_unit}         ${value_lokasi_unit}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_nama_pic}      timeout=10s
    Click Element                    ${input_nama_pic}
    Press Keys                       ${input_nama_pic}      CTRL+a    BACKSPACE
    Input Text                       ${input_nama_pic}      ${value_nama_pic}

    Wait Until Element Is Visible    ${input_nomor_pic}     timeout=10s
    Click Element                    ${input_nomor_pic}
    Press Keys                       ${input_nomor_pic}     CTRL+a    BACKSPACE
    Input Text                       ${input_nomor_pic}     ${value_nomor_pic}

    Wait Until Element Is Visible    ${input_alamat }    timeout=10s
    Click Element                    ${input_alamat }
    Press Keys                       ${input_alamat }    CTRL+a    BACKSPACE
    Input Text                       ${input_alamat }    ${value_alamat}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_lattitude}     timeout=10s
    Click Element                    ${input_lattitude}
    Press Keys                       ${input_lattitude}     CTRL+a    BACKSPACE
    Input Text                       ${input_lattitude}     ${value_lattitude}

    Wait Until Element Is Visible    ${input_longitude}    timeout=10s
    Click Element                    ${input_longitude}
    Press Keys                       ${input_longitude}    CTRL+a    BACKSPACE
    Input Text                       ${input_longitude}    ${value_longitude}

    Wait Until Element Is Visible    ${input_catatan}      timeout=10s
    Click Element                    ${input_catatan}
    Press Keys                       ${input_catatan}      CTRL+a    BACKSPACE
    Input Text                       ${input_catatan}      ${value_catatan }
    Sleep                            0.5s

Validasi Error Mandatory Field
    Wait Until Element Is Visible    ${simpan_lokasi_unit}    timeout=10s
    Click Element                    ${simpan_lokasi_unit}

    Wait Until Element Is Visible    ${msg_error_wajib_diisi}    timeout=10s

Validasi Toast Error Duplicate Pool Code
    Wait Until Element Is Visible    ${simpan_lokasi_unit}    timeout=10s
    Click Element                    ${simpan_lokasi_unit}

    Wait Until Element Is Visible    ${konfirmasi_ya}   timeout=10s
    Click Element                    ${konfirmasi_ya}

    Wait Until Element Is Visible        ${toast_error_duplicate_pool_code}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_error_duplicate_pool_code}    timeout=10s
    Sleep    0.5s

Validasi Error Mandatory Specific Fields
    Wait Until Element Is Visible    ${simpan_lokasi_unit}    timeout=10s
    Click Element                    ${simpan_lokasi_unit}

    Wait Until Element Is Visible    ${err_msg_kode_lokasi}    timeout=10s
    Wait Until Element Is Visible    ${err_msg_lokasi_unit}    timeout=10s
    Wait Until Element Is Visible    ${err_msg_alamat}         timeout=10s
    Sleep                            0.5s

Validasi Error Format Nomor PIC
    Wait Until Element Is Visible    ${input_nomor_pic}    timeout=10s
    Click Element                    ${input_nomor_pic}
    Press Keys                       ${input_nomor_pic}    CTRL+a    BACKSPACE
    Input Text                       ${input_nomor_pic}    ${nomor_pic_invalid}

    Wait Until Element Is Visible    ${simpan_lokasi_unit}   timeout=10s
    Click Element                    ${simpan_lokasi_unit}

    Wait Until Element Is Visible    ${err_msg_invalid_nomor_pic}    timeout=10s