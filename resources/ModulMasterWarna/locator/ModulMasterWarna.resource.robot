* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorMasterWarna.py

* Keywords *
Click Button Add New Warna
    Click Button    ${tambah_warna}
    Click Element   ${pilih_objek_lelang}    
    Click Element   ${value_objek_lelang} 
    Input Text     ${input_kode_warna}    ${value_kode_warna}
    Input Text     ${input_nama_warna}    ${value_nama_warna}
    Input Text     ${input_hex_warna}   ${value_hex_warna}

    Click Element   ${simpan_warna}
        
Click Button Ya Simpan Warna
    Click Button    ${ya_simpan_warna}
    Sleep    2s

Click Button Ya Mengerti Warna
    Click Button    ${ya_mengerti_warna}
    Sleep    2s

Click Button Filter Warna
    Click Button    ${klik_filter}
    Sleep    2s
    
Click Elenent Select Filter Warna
    #Click Select Filter Status Aktif
    Click Element   ${pilih_status}
    Click Element   ${value_status_aktif}

    #Click Select Filter Objek Lelang
    Click Element   ${pilih_filter_objek_lelang}
    click Element   ${value_filter_objek_lelang}

    #Click tampilkan
    Click Button    ${klik_tampilkan}
    Sleep    2s

Click Hapus Filter Warna
    Click Element    ${hapus_filter}
    Sleep    2s

search Warna By Kode
    Input Text    ${input_search}    Merah Marun
    Click Button    ${pilih_X}

    Sleep    4s
    Input Text    ${input_search}    Hitam

