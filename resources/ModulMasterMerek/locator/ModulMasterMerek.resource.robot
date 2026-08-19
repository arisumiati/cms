* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorMasterMerek.py

* Keywords *
Klik Button Tambah
    Wait Until Element Is Visible    ${btn_tambah}    timeout=30s
    Wait Until Element Is Enabled    ${btn_tambah}    timeout=10s
    Click Element                    ${btn_tambah}
    Sleep                            0.5s

Klik Simpan Merk
    Wait Until Element Is Visible    ${btn_simpan}           timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan}           timeout=10s
    Click Element                    ${btn_simpan}
    
    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_success_create_merek}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_success_create_merek}    timeout=10s
    Sleep    0.5s

Klik Simpan Merk Duplicate
    Wait Until Element Is Visible    ${btn_simpan}           timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan}           timeout=10s
    Click Element                    ${btn_simpan}
    
    Wait Until Element Is Visible    ${btn_ya_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled    ${btn_ya_konfirmasi}    timeout=10s
    Click Element                    ${btn_ya_konfirmasi}
    Sleep                            0.5s

    Wait Until Element Is Visible        ${toast_error_duplicate_merek}    timeout=10s
    Wait Until Element Is Not Visible    ${toast_error_duplicate_merek}    timeout=10s
    Sleep    0.5s

Pilih Objek Lelang Car
    Wait Until Element Is Visible    ${dropdown_objek_lelang}          timeout=10s
    Click Element                    ${dropdown_objek_lelang}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_search_objek_lelang}   timeout=10s
    Click Element                    ${input_search_objek_lelang}
    Input Text                       ${input_search_objek_lelang}   ${input_objek}
    Sleep                            1s

    Wait Until Element Is Visible    ${option_objek_lelang_car}        timeout=10s
    Click Element                    ${option_objek_lelang_car}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_nama_merek}    timeout=10s
    Click Element                    ${input_nama_merek}
    Press Keys                       ${input_nama_merek}    CTRL+a    BACKSPACE
    Input Text                       ${input_nama_merek}    ${value_merk}
    Sleep                            0.5s

    Wait Until Page Contains Element    ${input_upload_file_merek}    timeout=10s
    Choose File                         ${input_upload_file_merek}    ${IMAGE_PATH}
    Sleep                               1s

Validasi Pesan Error Wajib Diisi
    Wait Until Element Is Visible    ${btn_simpan}    timeout=10s
    Wait Until Element Is Enabled    ${btn_simpan}    timeout=10s
    Click Element                    ${btn_simpan}
    
    Wait Until Element Is Visible    ${msg_error_wajib_diisi}    timeout=10s
    Page Should Contain Element      ${msg_error_wajib_diisi}

Validasi Pesan Error Tipe File Tidak Valid
    Wait Until Page Contains Element    ${input_upload_file_merek}    timeout=10s
    Choose File                         ${input_upload_file_merek}    ${INVALID_FILE}
    Sleep                               1s
    
    Wait Until Element Is Visible    ${msg_error_invalid_file}    timeout=10s
    Element Text Should Be           ${msg_error_invalid_file}    Tipe file tidak valid.

Upload Oversized File Merek
    Wait Until Page Contains Element    ${input_upload_file_merek}    timeout=10s   
    Choose File                         ${input_upload_file_merek}    ${LARGE_IMAGE_FILE}
    Sleep                               1s
    
    Wait Until Element Is Visible    ${msg_error_max_file_size}    timeout=10s
    Element Text Should Be           ${msg_error_max_file_size}    Maximal file upload 2MB
