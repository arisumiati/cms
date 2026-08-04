* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorModulCustomer.py

* Keywords *
Click Button Add Customer
    Click Button  ${tambah_customer}

Click Button Selanjutnya
    Click Button ${klik_selanjutnya}

Click Button Simpan
    Click Button    ${klik_simpan}

Input Step Customer
    Sleep    5s
    Click Element    ${pilih_tipe_customer}
    Click Element   ${value_tipe_customer_perorangan}

    Click Element    ${pilih_membership}
    Sleep    5s
    Select Radio Button    ${value_memberhsip}

    Click Element    ${input_nama_depan}

    ${nama_depan}=    Evaluate    random.choice(['Ardi','Dimas','Fajar','Rizky','Budi','Ayu','Putri'])    random
    Input Text    ${input_nama_depan}    ${nama_depan}

    Click Element     ${input_nama_belakang}

    ${nama_belakang}=    Evaluate    random.choice(['Pratama','Saputra','Wijaya','Nugroho','Santoso','Hidayat'])    random
    Input Text    ${input_nama_belakang}    ${nama_belakang}

    Click Element     ${input_no_ponsel}
    Input Text     ${input_no_ponsel}    087818660928
\
    Click Element    ${input_email}
    ${email}=    Evaluate    f"{first.lower()}.{last.lower()}@yopmail.com"    first=${nama_depan}    last=${nama_belakang}

    Input Text ${input_email}   ${email}

    Click Element    ${input_tempat_lahir}
    Input Text    ${input_tempat_lahir}    Bandung

    Click Element     ${input_tanggal_lahir}    
    Press Keys    ${input_tanggal_lahir}    2000    TAB    12-24

    Click Element     ${pilih_jenis_kelamin}
    Click Element    ${value_jenis_kelamin}

    Click Element     ${pilih_status_pekerjaan}
    Click Element    ${value_status_pekerjaan}

    Click Element    ${pilih_kewarganegaraan}
    Click Element    ${value_kewarganegaraan}

    Click Element    ${input_kode_pos}
    Input Text    ${input_kode_pos}

    Click Element    ${input_alamat}
    Input Text    ${input_alamat}

    Click Element    ${input_kota_domisili}
    Input Text     ${input_kota_domisili}

    Click Element    ${input_alamat_domisili}
    Input Text     ${input_alamat_domisili}

    Choose File    ${upload_ktp}    ${path_file_ktp}

    Choose File    ${upload_npwp}    ${path_file_npwp}

    Click Element    ${input_no_ktp}
    Input Text    ${input_no_ktp}

    Click Element    ${input_no_npwp}
    Input Text     ${input_no_npwp}

    Click Element    ${input_nama_npwp}
    Input Text    ${input_nama_npwp}

Input Step Bank
    Sleep    5s
    Click Element    ${pilih_nama_bank}
    Click Eelement    ${value_bank}
    Click Element     ${input_cabang_bank}
    Input Text    ${input_cabang_bank}    ${value_cabang_bank}
    Click Element     ${input_nama_pemilik_rekening}

    ${nama_pemilik_rekening}=    Evaluate    random.choice(['Ardi','Dimas','Fajar','Rizky','Budi','Ayu','Putri'])    random
    Input Text    ${input_nama_pemilik_rekening}    ${nama_pemilik_rekening}

    ${nomor_rekening}=   Evaluate    ''.join(random.choices('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', k=17))    random
    Input Text    ${input_nomor_rekening}    ${nomor_rekening} 

    Choose File  ${upload_buku_tabungan}  ${path_file_buku_tabungan}
    Sleep  3s

    ${catatan}=    Generate Random String    20

    Input Text  ${input_catatan}  ${catatan}


Input Step Other
    Click Element     ${value_showroom_ada}
    Click Element     ${pilih_tujuan_beli}
    Click Element     ${value_tujuan_beli}

    Click Element     ${pilih_sumber_dana}
    Click Element     ${value_sumber_dana}

    Click Element     ${pilih_transaksi_untuk}
    Click Element     ${value_transaksi_untuk}

    Click Element    ${pilih_jenis_lelang}
    Click Elemet    ${value_jenis_lelang}

    ${other}=    Generate Random String    20

    Input Text     ${input_otther1}    ${other}
    Input Text     ${input_otther2}    ${other}
    Input Text     ${input_otther3}    ${other}
    Input Text     ${input_otther4}    ${other}
    Input Text     ${input_otther5}    ${other}

    Input Text     ${input_kode_referral}    ${value_kode_referal}

    Click Element     ${send_password}