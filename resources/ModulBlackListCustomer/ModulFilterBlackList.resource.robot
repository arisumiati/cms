* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulBlackListCustomer/LocatorFilterBlackList.py

* Keywords *
Klik Button Filter
    Wait Until Element Is Visible    ${btn_filter}    timeout=30s
    Wait Until Element Is Enabled    ${btn_filter}    timeout=10s
    Click Element                    ${btn_filter}
    Sleep                            0.5s

Klik Button Hapus
    Wait Until Element Is Visible    ${btn_hapus}    timeout=10s
    Wait Until Element Is Enabled    ${btn_hapus}    timeout=10s
    Click Element                    ${btn_hapus}
    Sleep                            0.5s

Klik Button Tampilkan Filter
    Wait Until Element Is Visible    ${btn_tampilkan_filter}    timeout=10s
    Wait Until Element Is Enabled    ${btn_tampilkan_filter}    timeout=10s
    Click Element                    ${btn_tampilkan_filter}
    Sleep                            1s

Pilih Nama Bank Mandiri
    Wait Until Element Is Visible    ${dropdown_nama_bank}    timeout=10s
    Click Element                    ${dropdown_nama_bank}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_bank_mandiri}   timeout=10s
    Scroll Element Into View         ${option_bank_mandiri}
    Click Element                    ${option_bank_mandiri}
    Sleep                            0.5s

Pilih Filter Status Aktif
    Wait Until Element Is Visible    ${input_search_status}   timeout=10s
    Click Element                    ${input_search_status}
    Input Text                       ${input_search_status}   Non Aktif
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_status_aktif}    timeout=10s
    Click Element                    ${option_status_aktif}
    Sleep                            0.5s

Pilih Filter Multiple
    Wait Until Element Is Visible    ${input_search_status}   timeout=10s
    Click Element                    ${input_search_status}
    Input Text                       ${input_search_status}   Non Aktif
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_status_aktif}    timeout=10s
    Click Element                    ${option_status_aktif}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dropdown_nama_bank}    timeout=10s
    Click Element                    ${dropdown_nama_bank}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_bank_mandiri}   timeout=10s
    Scroll Element Into View         ${option_bank_mandiri}
    Click Element                    ${option_bank_mandiri}
    Sleep                            0.5s

Pilih Filter Multiple Invalid
    Wait Until Element Is Visible    ${input_search_status}   timeout=10s
    Click Element                    ${input_search_status}
    Input Text                       ${input_search_status}    Aktif  
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_status_invalid}    timeout=10s
    Click Element                    ${option_status_invalid}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${dropdown_nama_bank}    timeout=10s
    Click Element                    ${dropdown_nama_bank}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${option_bank_Invalid}   timeout=10s
    Scroll Element Into View         ${option_bank_Invalid}
    Click Element                    ${option_bank_Invalid}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_nama_bank}    timeout=10s
    Click Element                    ${input_nama_bank}
    Press Keys                       ${input_nama_bank}    CTRL+a    BACKSPACE
    Input Text                       ${input_nama_bank}    ${input_bank}
    Sleep                            0.5s

Search Data
    Wait Until Element Is Visible    ${input_search}    timeout=10s
    Click Element                    ${input_search}
    Press Keys                       ${input_search}    CTRL+a    BACKSPACE
    Input Text                       ${input_search}    ${search}
    Press Keys                       ${input_search}    RETURN
    Sleep                            1s