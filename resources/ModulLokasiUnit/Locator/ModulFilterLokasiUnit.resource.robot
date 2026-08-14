* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorFilterLokasiUnit.py

* Keywords *
Klik Filter
    Wait Until Element Is Visible    ${button_filter}    timeout=30s
    Click Element                    ${button_filter} 

Klik Button Tampilkan
    Wait Until Element Is Visible    ${btn_tampilkan}    timeout=10s
    Wait Until Element Is Enabled    ${btn_tampilkan}    timeout=10s
    Click Element                    ${btn_tampilkan}

Klik Button Hapus
    Wait Until Element Is Visible    ${btn_hapus}    timeout=10s
    Wait Until Element Is Enabled    ${btn_hapus}    timeout=10s
    Click Element                    ${btn_hapus}

Input Filter
    Wait Until Element Is Visible    ${kode_lokasi}      timeout=10s
    Input Text                       ${kode_lokasi}      ${value_kode}

    Wait Until Element Is Visible    ${input_lokasi}     timeout=10s
    Input Text                       ${input_lokasi}     ${value_lokasi}

    Wait Until Element Is Visible    ${input_nama}       timeout=10s
    Input Text                       ${input_nama}       ${value_nama}

Input Filter Kode Lokasi
    Wait Until Element Is Visible    ${kode_lokasi}      timeout=10s
    Input Text                       ${kode_lokasi}      ${value_kode}
    Sleep                            1s

Input Filter Lokasi Unit
    Wait Until Element Is Visible    ${input_lokasi}     timeout=30s
    Input Text                       ${input_lokasi}     ${value_lokasi}
    Sleep                            1s

Input Filter Nama PIC
    Wait Until Element Is Visible    ${input_nama}     timeout=30s
    Input Text                       ${input_nama}     ${value_nama}
    Sleep                            1s

Input Nomor PIC
    Wait Until Element Is Visible    ${input_nomor_pic}    timeout=10s
    Input Text                       ${input_nomor_pic}    ${value_nomor_pic}
    Sleep                            1s

Input filter Multiple
    Wait Until Element Is Visible    ${kode_lokasi}      timeout=10s
    Input Text                       ${kode_lokasi}      ${value_kode}
    Sleep                            1s

    Wait Until Element Is Visible    ${input_nama}     timeout=30s
    Input Text                       ${input_nama}     ${value_nama}
    Sleep                            1s

Input filter Kode_Invalid
    Wait Until Element Is Visible    ${kode_lokasi}      timeout=10s
    Input Text                       ${kode_lokasi}      ${value_kode_invalid}
    Sleep                            1s

Input Field Search
    Wait Until Element Is Visible    ${input_search}    timeout=30s
    Input Text                       ${input_search}    ${value_search}