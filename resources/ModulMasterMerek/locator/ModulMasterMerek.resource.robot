* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorMasterMerek.py

* Keywords *
#add new master merek
Click Button Add New Merek
    Click Button  ${tambah_merek}

Input Merek Details
    Click Element  ${pilih_objek_lelang}    
    Click Element  ${value_objek_lelang}
    Input Text  ${input_nama_merek}   ${value_nama_merek}
    Choose File  ${upload_logo_merek}    ${value_logo_merek}

Click Button Ya Simpan Merek
    Click Button  ${simpan_merek}

Click Button Ya Mengerti
    Click Button  ${konfirmasi_ya}

#filter master merek
Click Button Filter Merek
    Click Button  ${filter_merek}

Click Filter Objek Lelang
    Click Element  ${filter_objek_lelang_dropdown}    
    Click Element  ${value_filter_objek_lelang}

Click Filter Status Aktif
    Click Element  ${filter_status_merek_dropdown}    
    Click Element  ${value_filter_status_aktif}

Click Filter Status Inaktif
    Click Element  ${filter_status_merek_dropdown}    
    Click Element  ${value_filter_status_tidak_aktif}

Click Filter Merek
    Input Text    ${filter_nama_merek_dropdown}    ${value_filter_nama_merek}

Click Button Terapkan Filter
    Click Button  ${klik_tampilkan}

Click Hapus Filter Merek
    Click Button  ${hapus_filter}

#search master merek
Input Search Merek
    #by objek lelang
    Input Text  ${input_search_merek}   ${search_objek_lelang}
    Click Element  ${pilih_X}

    #by nama
    input Text  ${input_search_merek}   ${search_nama_merek}
    Click Element  ${pilih_X}

#delete master merek
Click Button Delete
    Input Text  ${input_search_merek}    testkeun

    Click Element  ${klik_aksi}

    Click Button  ${delete_merek}

Kondirmasi Delete Merek
    Click Button  ${konfirmasi_ya}

#edit master merek
Click Button Edit Merek
    Input Text  ${input_search_merek}    BMW

    Click Button  ${edit_merek}

    input Text  ${input_nama_merek}   ${edit_nama_merek}

Click Button Ya Ubah Merek
    Click Button  ${konfirmasi_ya}

#ubah status active master merek
Click status Active Merek
    Checkbox Should Be Selected    ${ubah_status_aktif}

#ubah status inactive master merek
Click status Inactive Merek
    Checkbox Should Be Selected   ${status_tidak_aktif}

#download master merek
Click button download Merek
    Click Button  ${download_merek}
    

