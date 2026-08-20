* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorMasterTipe.py

* Keywords *
Search Data Tipe
    Wait Until Element Is Visible    ${input_search_tipe}    timeout=30s
    Click Element                    ${input_search_tipe}
    Press Keys                       ${input_search_tipe}    CTRL+a    BACKSPACE
    Input Text                       ${input_search_tipe}    ${value_search}
    Press Keys                       ${input_search_tipe}    ENTER
    Sleep                            1s

Klik Button Edit Tipe
    Wait Until Element Is Visible    ${btn_edit_tipe}    timeout=10s
    Wait Until Element Is Enabled    ${btn_edit_tipe}    timeout=10s
    Click Element                    ${btn_edit_tipe}
    Sleep                            0.5s

Klik Button Tambah Tipe
    Wait Until Element Is Visible    ${btn_tambah_tipe}    timeout=30s
    Wait Until Element Is Enabled    ${btn_tambah_tipe}    timeout=10s
    Click Element                    ${btn_tambah_tipe}
    Sleep                            0.5s

Klik Button Simpan Tipe
    Wait Until Element Is Visible    ${btn_simpan_tipe}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_tipe}    timeout=10s
    Click Element                    ${btn_simpan_tipe}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_success_create_tipe}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_create_tipe}    timeout=10s
    Sleep    0.5s

Klik Button Simpan Edit Tipe
    Wait Until Element Is Visible    ${btn_simpan_tipe}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_tipe}    timeout=10s
    Click Element                    ${btn_simpan_tipe}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_success_update_tipe}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_update_tipe}    timeout=10s
    Sleep    0.5s

Klik Button Simpan Tipe Existing
    Wait Until Element Is Visible    ${btn_simpan_tipe}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_tipe}    timeout=10s
    Click Element                    ${btn_simpan_tipe}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_error_duplicate_tipe}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_error_duplicate_tipe}    timeout=10s
    Sleep    0.5s

Input Tambah Tipe
    Wait Until Element Is Visible    ${dd_objek_lelang_tipe_trigger}    timeout=10s
    Click Element                    ${dd_objek_lelang_tipe_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover_form}
    IF    ${is_search_present}
        Input Text    ${input_search_popover_form}    ${Objek_lelang}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang_car_form}    timeout=10s
    Click Element                    ${opt_objek_lelang_car_form}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dd_merek_tipe_trigger}    timeout=10s
    Click Element                    ${dd_merek_tipe_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover_form}
    IF    ${is_search_present}
        Input Text    ${input_search_popover_form}    ${merek}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_merek_test_auto_form}    timeout=10s
    Click Element                    ${opt_merek_test_auto_form}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dd_model_tipe_trigger}    timeout=10s
    Click Element                    ${dd_model_tipe_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover_form}
    IF    ${is_search_present}
        Input Text    ${input_search_popover_form}    ${model}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_model_pajero_sport_form}    timeout=10s
    Click Element                    ${opt_model_pajero_sport_form}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_nama_tipe}    timeout=10s
    Click Element                    ${input_nama_tipe}
    Press Keys                       ${input_nama_tipe}    CTRL+a    BACKSPACE
    Input Text                       ${input_nama_tipe}    ${option_tipe}
    Sleep                            0.5s

    Wait Until Page Contains Element    ${input_file_upload}    timeout=10s
    Choose File                         ${input_file_upload}    ${IMAGE_PATH }
    Sleep                               2s

Input Tambah Tipe BMW
    Wait Until Element Is Visible    ${dd_objek_lelang_tipe_trigger}    timeout=10s
    Click Element                    ${dd_objek_lelang_tipe_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover_form}
    IF    ${is_search_present}
        Input Text    ${input_search_popover_form}    ${Objek_lelang}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_objek_lelang_car_form}    timeout=10s
    Click Element                    ${opt_objek_lelang_car_form}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dd_merek_tipe_trigger}    timeout=10s
    Click Element                    ${dd_merek_tipe_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover_form}
    IF    ${is_search_present}
        Input Text    ${input_search_popover_form}    ${option_merk}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_merek_Bmw}    timeout=10s
    Click Element                    ${opt_merek_Bmw}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dd_model_tipe_trigger}    timeout=10s
    Click Element                    ${dd_model_tipe_trigger}
    Sleep                            0.5s

    ${is_search_present}=    Run Keyword And Return Status    Element Should Be Visible    ${input_search_popover_form}
    IF    ${is_search_present}
        Input Text    ${input_search_popover_form}    ${opt_model}
        Sleep         0.5s
    END

    Wait Until Element Is Visible    ${opt_model_BMW}    timeout=10s
    Click Element                    ${opt_model_BMW}
    Sleep                            0.5s

Validasi Pesan Error Wajib Diisi
    Wait Until Element Is Visible    ${btn_simpan_tipe}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan_tipe}    timeout=10s
    Click Element                    ${btn_simpan_tipe}
    Sleep                            0.5s
    
    Wait Until Element Is Visible    ${lbl_error_wajib_diisi}    timeout=10s
    
    ${count}=    Get Element Count    ${lbl_error_wajib_diisi}
    Should Be Equal As Integers       ${count}    4
    Sleep                             0.5s

Validasi File Error
    Wait Until Page Contains Element    ${input_file_upload}    timeout=10s
    Choose File                         ${input_file_upload}    ${INVALID_PATH}
    Sleep                               2s

    Wait Until Element Is Visible    ${lbl_error_tipe_file_invalid}    timeout=10s
    Element Should Be Visible        ${lbl_error_tipe_file_invalid}
    Sleep                            0.5s\

Hapus Gambar Tipe
    Wait Until Element Is Visible    ${btn_hapus_gambar}    timeout=10s
    Wait Until Element Is Enabled    ${btn_hapus_gambar}    timeout=10s
    Click Element                    ${btn_hapus_gambar}

Input Edit Tipe
    Wait Until Element Is Visible    ${input_nama_tipe}    timeout=10s
    Click Element                    ${input_nama_tipe}
    Press Keys                       ${input_nama_tipe}    CTRL+a    BACKSPACE
    Input Text                       ${input_nama_tipe}    ${edit_tipe}
    Sleep                            0.5s

    Hapus Gambar Tipe
    Sleep                            1s

    Wait Until Page Contains Element    ${input_file_upload}    timeout=10s
    Choose File                         ${input_file_upload}    ${UPDATE_PATH}
    Sleep                               2s