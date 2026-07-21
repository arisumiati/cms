* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorModulLokasiUnit.py

* Keywords *
Click Button Add New Tambah Lokasi
    Click Button  ${tambah_lokasi_unit}

Input Lokasi Unit Details
    Input Text  ${input_kode_lokasi_unit}   ${value_kode_lokasi_unit}
    Input Text  ${input_lokasi_unit}   ${value_lokasi_unit}
    Input Text  ${input_nama_pic}    ${value_nama_pic}
    Input Text  ${input_nomor_pic}    ${value_nomor_pic}
    Input Text  ${input_alamat}    ${value_alamat}
    Input Text  ${input_lattitude}    ${value_lattitude}
    Input Text  ${input_longitude}    ${value_longitude}
    Input Text  ${input_catatan}    ${value_catatan}

Click Button Ya Simpan Lokasi Unit
    Click Button  ${simpan_lokasi_unit}

Click Button Ya Mengerti
    Click Button  ${konfirmasi_ya}