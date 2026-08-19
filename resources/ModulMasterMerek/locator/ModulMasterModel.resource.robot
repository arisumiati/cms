* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorMasterModel.py

* Keywords *
Search Model
    Wait Until Element Is Visible    ${input_search_model}    timeout=30s
    Click Element                    ${input_search_model}
    Press Keys                       ${input_search_model}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_model}    ${search_model}
    Press Keys                       ${input_search_model}    ENTER
    Sleep                            1s

Klik Button Edit
    Wait Until Element Is Visible    ${btn_edit_model}    timeout=10s
    Wait Until Element Is Enabled    ${btn_edit_model}    timeout=10s
    Click Element                    ${btn_edit_model}
    Sleep                            0.5s

Klik Button Tambah Model
    Wait Until Element Is Visible    ${btn_tambah}    timeout=30s
    Wait Until Element Is Enabled    ${btn_tambah}    timeout=10s
    Click Element                    ${btn_tambah}
    Sleep                            0.5s

Klik Button Simpan Invalid
    Wait Until Element Is Visible    ${btn_simpan_model}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_model}    timeout=10s
    Click Element                    ${btn_simpan_model}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_error_model_already_exists}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_error_model_already_exists}    timeout=10s
    Sleep    0.5s

Klik Button Simpan 
    Wait Until Element Is Visible    ${btn_simpan_model}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_model}    timeout=10s
    Click Element                    ${btn_simpan_model}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_success_create_model}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_create_model}    timeout=10s
    Sleep    0.5s

Klik Button Simpan Edit 
    Wait Until Element Is Visible    ${btn_simpan_model}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_model}    timeout=10s
    Click Element                    ${btn_simpan_model}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_success_update_model}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_update_model}    timeout=10s
    Sleep    0.5s

Klik Button Simpan Exsisting 
    Wait Until Element Is Visible    ${btn_simpan_model}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_model}    timeout=10s
    Click Element                    ${btn_simpan_model}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_error_model_already_exists}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_error_model_already_exists}    timeout=10s
    Sleep    0.5s

Validasi Pesan Error Wajib Diisi
    [Arguments]    ${expected_count}=3
    Wait Until Element Is Visible    ${btn_simpan_model}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_model}    timeout=10s
    Click Element                    ${btn_simpan_model}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${txt_error_wajib_diisi}    timeout=10s
    ${count}=    Get Element Count    ${txt_error_wajib_diisi}
    Should Be Equal As Integers       ${count}    ${expected_count}    msg=Jumlah pesan error 'Wajib diisi' tidak sesuai! Ekspektasi: ${expected_count}, ditemukan: ${count}

Input Objek lelang
    Wait Until Element Is Visible    ${dd_objek_lelang_form_trigger}    timeout=10s
    Click Element                    ${dd_objek_lelang_form_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover}
    IF    ${is_search_present}
        Input Text    ${input_search_popover}    ${objek_lelang}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang_car}    timeout=10s
    Click Element                    ${opt_objek_lelang_car}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dd_merek_form_trigger}    timeout=10s
    Click Element                    ${dd_merek_form_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover}
    IF    ${is_search_present}
        Input Text    ${input_search_popover}    ${value_merk}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_merek_test_auto}    timeout=10s
    Click Element                    ${opt_merek_test_auto}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_nama_model}    timeout=10s
    Click Element                    ${input_nama_model}
    Press Keys                       ${input_nama_model}    CTRL+a    BACKSPACE
    Input Text                       ${input_nama_model}    ${nama_model}
    Sleep                            0.5s

Input Edit Model
    Wait Until Element Is Visible    ${input_nama_model}    timeout=10s
    Click Element                    ${input_nama_model}
    Press Keys                       ${input_nama_model}    CTRL+a    BACKSPACE
    Input Text                       ${input_nama_model}    ${edit_model}
    Sleep                            0.5s