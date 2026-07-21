* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorModulObjekLelang.py

* Keywords *
Click Button Add New Objek Lelang
    Click Button  ${tambah_objek_lelang}   

Click Button Ya Simpan Objek Lelang
    Click Button  ${simpan_objek_lelang}
    Sleep  2s
    Click Button  ${ya_simpan_objek_lelang}

Click Button Ya Mengerti
    Sleep  2s
    Click Button  ${ya_mengerti}

Click Button Selanjutnya
    Click Button  ${klik_selanjutnya}

Click Filter Objek Lelang
    Click Element  ${filter}
    Click Element    ${filter_objek_lelang}
    Click Element    ${value_filter_objek_lelang}
    Click Button    ${klik_tampilkan}

Input Objek Lelang Step Unit
#step unit
    Sleep  3s
    Click Element    ${pilih_objek_lelang}
    Click Element    ${value_objek_lelang_electronic}

    Sleep    3s
    Click Element  ${input_cabang}
    Input Text  ${input_cabang}  ${value_cabang}
    Click Element    ${value_select_cabang}
    Sleep  3s   
    Click Element  ${input_no_Seller}
    Input Text  ${input_no_Seller}  ${value_no_seller}
    Click Element    ${value_select_no_seller}
    Input Text  ${input_HDL}  ${value_HDL}
    
    Click Element    ${pilih_merek}
    Click Element    ${value_merek_electronic}
    Sleep  3s
    Click Element    ${pilih_model}
    Click Element    ${value_model_electronic}
    Sleep  3s
    Click Element    ${input_tahun_Unit}
    Input Text  ${input_tahun_Unit}  ${value_tahun_unit}
   
    Click Element    ${pilih_warna}
    Click Element    ${value_warna_electronic}

    ${no_penyimpanan}=    Evaluate    f"{random.randint(1,99):02d}"    random
    ${serial_number}=   Evaluate    ''.join(random.choices('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', k=5))    random
    ${catatan}=    Generate Random String    20

    [Return]    ${no_penyimpanan} ${serial_number} ${catatan}

    Input Text  ${input_RAM}  ${value_ram}
    Input Text  ${input_serialnumber}    ${serial_number}
    Input Text  ${input_no_penyimpanan}  ${no_penyimpanan}
    Sleep    3s
    Click Element    ${pilih_grade}
    Click Element    ${value_grade}
    Input Text  ${input_catatan}  ${catatan}

    Sleep  5s


Input Objek Lelang Step Dokumen Lengkap
#step dokumen
    Sleep  3s
    Click Element    ${value_charger}
    Click Element    ${value_box}

    Click Element    ${value_garansi}

    Click Element    ${pilih_masa_berlaku_garansi}
    Press Keys  ${pilih_masa_berlaku_garansi}    2025    TAB    12-24

    Choose File  ${upload_foto_1}  ${path_file_stnk}

    Choose File  ${upload_foto_2}  ${path_file_bpkb}


Input Objek Lelang Step Foto
#step foto
    Choose File  ${upload_tampak_depan}  ${path_file_tampak_depan}
    Sleep    3s
    Click Element    ${klik_bintang_foto}
    Choose File  ${upload_tampak_belakang}  ${path_file_tampak_belakang}
    Sleep    3s
    Choose File  ${upload_tampak_kanan}  ${path_file_tampak_kanan}
    Sleep    3s
    Choose File  ${upload_tampak_kiri}  ${path_file_tampak_kiri}
    Sleep    3s
    Choose File  ${upload_tampak_spidometer}  ${path_file_tampak_spidometer}
    Sleep    3s
    Choose File  ${upload_tampak_bagasi}  ${path_file_tampak_bagasi}
    Sleep    3s
    Choose File  ${upload_tampak_interior}  ${path_file_tampak_interior}
    Sleep    3s
    Choose File  ${upload_tampak_ruang_mesin}  ${path_file_tampak_ruang_mesin}
    Sleep    3s
    Choose File  ${upload_foto_lainnya3}  ${path_file_foto_lainnya3}
    Sleep    3s
    Choose File  ${upload_foto_lainnya4}  ${path_file_foto_lainnya4} 
    Sleep    3s   
    Choose File  ${upload_foto_lainnya5}  ${path_file_foto_lainnya5}
    Sleep    3s
    Choose File  ${upload_foto_lainnya6}  ${path_file_foto_lainnya6}
    Sleep    3s
    Choose File  ${upload_foto_lainnya7}  ${path_file_foto_lainnya7}
    Choose File  ${upload_foto_lainnya8}  ${path_file_foto_lainnya8}
    Choose File  ${upload_foto_lainnya9}  ${path_file_foto_lainnya9}
    Choose File  ${upload_foto_lainnya10}  ${path_file_foto_lainnya10}

    Sleep    20s

Input Objek Lelang Step Dokumen Tidak Lengkap
#step dokumen
    Sleep  3s
    Click Element    ${value_charger_tidak}
    Click Element    ${value_box_tidak}
    Click Element    ${value_garansi_tidak}

    Choose File  ${upload_foto_1}  ${path_file_stnk}

    Choose File  ${upload_foto_2}  ${path_file_bpkb}

Input Objek Lelang Step Dokumen NA
#step dokumen
    Sleep  3s
    Click Element    ${value_charger_NA}
    Click Element    ${value_box_NA}
    Click Element    ${value_garansi_NA}

    Choose File  ${upload_foto_1}  ${path_file_stnk}

    Choose File  ${upload_foto_2}  ${path_file_bpkb}