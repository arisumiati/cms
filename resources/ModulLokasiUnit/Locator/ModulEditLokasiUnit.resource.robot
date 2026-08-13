* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorEditLokasiUnit.py

* Keywords *
Search Lokasi
    Wait Until Element Is Visible    ${input_search_table}    timeout=30s
    Click Element                    ${input_search_table}
    Press Keys                       ${input_search_table}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_table}    ${value_search_Nama}
    Press Keys                       ${input_search_table}    RETURN
    Sleep                            1s

Klik Menu Edit Pada Tabel
    Wait Until Element Is Visible    ${btn_action_dropdown}    timeout=10s
    Click Element                    ${btn_action_dropdown}

    Wait Until Element Is Visible    ${item_menu_edit}         timeout=10s
    Click Element                    ${item_menu_edit}
    Sleep                            0.5s

Edit Lokasi Unit
    Wait Until Element Is Visible    ${input_lokasi_unit}    timeout=10s
    Click Element                    ${input_lokasi_unit}
    Press Keys                       ${input_lokasi_unit}    CTRL+a    BACKSPACE
    Input Text                       ${input_lokasi_unit}    ${nama_lokasi_baru}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_nama_pic}     timeout=10s
    Click Element                    ${input_nama_pic}
    Press Keys                       ${input_nama_pic}     CTRL+a    BACKSPACE
    Input Text                       ${input_nama_pic}     ${nama_pic_baru}

    Wait Until Element Is Visible    ${input_nomor_pic}    timeout=10s
    Click Element                    ${input_nomor_pic}
    Press Keys                       ${input_nomor_pic}    CTRL+a    BACKSPACE
    Input Text                       ${input_nomor_pic}    ${nomor_pic_baru}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_alamat_pool}    timeout=10s
    Click Element                    ${input_alamat_pool}
    Press Keys                       ${input_alamat_pool}    CTRL+a    BACKSPACE
    Input Text                       ${input_alamat_pool}    ${alamat_baru}

    Wait Until Element Is Visible    ${input_latitude}       timeout=10s
    Click Element                    ${input_latitude}
    Press Keys                       ${input_latitude}       CTRL+a    BACKSPACE
    Input Text                       ${input_latitude}       ${latitude_baru}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_longitude}    timeout=10s
    Click Element                    ${input_longitude}
    Press Keys                       ${input_longitude}    CTRL+a    BACKSPACE
    Input Text                       ${input_longitude}    ${longitude_baru}

    Wait Until Element Is Visible    ${input_catatan}      timeout=10s
    Click Element                    ${input_catatan}
    Press Keys                       ${input_catatan}      CTRL+a    BACKSPACE
    Input Text                       ${input_catatan}      ${catatan_baru}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_simpan_modal}    timeout=10s
    Click Element                    ${btn_simpan_modal}

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}   timeout=10s
    Click Element                    ${btn_ya_konfirmasi}

    Wait Until Element Is Visible        ${toast_success_update_lokasi}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_update_lokasi}    timeout=10s