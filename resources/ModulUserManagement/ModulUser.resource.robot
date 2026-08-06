* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../locator/LocatorModulUserManagement.py

*** Keywords ***
Click Button Add New User
    Click Button    ${tambah_user}

Input User Details    
    Input Text   ${input_nama_depan}    ${value_nama_depan}
    Input Text   ${input_nama_belakang}    ${value_nama_belakang}
    Input Text   ${input_email}    ${value_email}
    Input Text   ${input_no_hp}    ${value_no_hp}
    Input Text   ${input_no_NIK}    ${value_no_NIK}
    Click Element   ${pilih_role}
    Sleep    2s
    Click Element   ${value_role}    

Click Button Save User
    Click Button    ${simpan_user}

Click Button Ya Mengerti User
    Click Button    ${konfirmasi_ya}

Click Button Add Group User
    Click Button    ${tambah_group}

Input Group User Details        
    Click Element   ${pilih_kategori}
    Sleep    2s
    Click Element   ${value_pilih_kategori}

    Input Text    ${cari_group}    ${value_cari_group} 
    Sleep    2s
    Click Element    ${ceklis_group}    

#filter master user
Click Button Filter User
    Click Button    ${klik_filter}

Click Filter Status
    Click Element    ${filter_status_aktif}    
    Click Element    ${value_filter_status_aktif}
    # Click Element    ${value_filter_status_tidak_aktif} 

Click Filter Role
    Click Element    ${filter_role}    
    Click Element    ${value_filter_role}

Click Filter Nama Lengkap
    Input Text      ${filter_nama_lengkap}    User Otomatis

Click Filter Email
    Input Text      ${filter_email}    sso@mail.com

Click Filter Group
    Input Text      ${filter_group}    Group Otomatis

Click Button Terapkan Filter
    Click Button    ${klik_tampilkan}

Click Hapus Filter User
    Click Button    ${hapus_filter}

#search master user
Input Search User
    #by nama lengkap
    Input Text    ${input_cari_user}   ${cari_by_nama_lengkap}
    Click Button    ${pilih_x}

    #by email
    Input Text    ${input_cari_user}   ${cari_by_email}
    Click Button    ${pilih_x}

    #by nik
    Input Text    ${input_cari_user}   ${cari_by_nik}
    Click Button    ${pilih_x}

    #by no hp
    Input Text    ${input_cari_user}   ${cari_by_no_hp}
    Click Button    ${pilih_x}

    #by nama role
    Input Text    ${input_cari_user}   ${cari_by_nama_role}
    Click Button    ${pilih_x}