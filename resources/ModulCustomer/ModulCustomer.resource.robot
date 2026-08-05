* Settings *
Library  SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulCustomer/LocatorModulCustomer.py

* Keywords *
Click Button Add Customer
    Wait Until Page Contains Element    ${tambah_customer}    timeout=30s
    Scroll Element Into View            ${tambah_customer}
    ${el_tambah}=                       Get Web Element  ${tambah_customer}
    Execute Javascript                  arguments[0].click();    ARGUMENTS    ${el_tambah}
    Sleep                               0.5s

Click Button Selanjutnya
    Wait Until Page Contains Element    ${klik_selanjutnya}                                timeout=10s
    Wait Until Element Is Enabled       ${klik_selanjutnya}                                timeout=10s
    
    ${el_btn}=                          Get Web Element                                   ${klik_selanjutnya}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_btn}
    Sleep                               0.3s
    
    Click Element                       ${klik_selanjutnya}
    Sleep                               1s

Click Button Simpan
    Wait Until Page Contains Element    ${btn_simpan_utama}                               timeout=10s
    ${el_simpan1}=                      Get Web Element                                   ${btn_simpan_utama}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_simpan1}
    Sleep                               0.3s
    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_simpan1}

    Wait Until Page Contains Element    ${btn_simpan_popup}                              timeout=10s
    ${el_konfirmasi}=                   Get Web Element                                   ${btn_simpan_popup}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_konfirmasi}
    Sleep                               0.3s
    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_konfirmasi}
    Sleep                               1s

    Wait Until Page Contains            Berhasil menambah customer!                       timeout=10s
    Log To Console                      \n[SUCCESS] Toast notification 'Berhasil menambah customer!' berhasil terverifikasi!

Input Step Customer
    Wait Until Page Contains Element    ${pilih_tipe_customer}                 timeout=10s
    Scroll Element Into View            ${pilih_tipe_customer}
    ${el_dropdown_cust}=                Get Web Element                        ${pilih_tipe_customer}
    Execute Javascript                  arguments[0].click();                  ARGUMENTS    ${el_dropdown_cust}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Tipe Customer' and @data-state='open']    timeout=5s
    Sleep                               0.3s
    
    Wait Until Element Is Visible       ${value_tipe_customer_perorangan}       timeout=10s
    Scroll Element Into View            ${value_tipe_customer_perorangan}
    Click Element                       ${value_tipe_customer_perorangan}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_membership}                    timeout=10s
    Scroll Element Into View            ${pilih_membership}
    ${el_dropdown_mem}=                 Get Web Element                        ${pilih_membership}
    Execute Javascript                  arguments[0].click();                  ARGUMENTS    ${el_dropdown_mem}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Membership' and @data-state='open']       timeout=5s
    Sleep                               0.3s
    
    Wait Until Element Is Visible       ${value_membership}                    timeout=10s
    Scroll Element Into View            ${value_membership}
    Click Element                       ${value_membership}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_nama_depan}                    timeout=10s
    Scroll Element Into View            ${input_nama_depan}
    Click Element                       ${input_nama_depan}
    ${nama_depan}=                      Evaluate    random.choice(['Ardi','Dimas','Fajar','Rizky','Budi','Ayu','Putri'])    random
    Input Text                          ${input_nama_depan}                    ${nama_depan}

    Wait Until Page Contains Element    ${input_nama_belakang}                 timeout=10s
    Scroll Element Into View            ${input_nama_belakang}
    Click Element                       ${input_nama_belakang}
    ${nama_belakang}=                   Evaluate    random.choice(['Pratama','Saputra','Wijaya','Nugroho','Santoso','Hidayat'])    random
    Input Text                          ${input_nama_belakang}                 ${nama_belakang}

    Wait Until Page Contains Element    ${input_no_ponsel}                                timeout=10s
    ${el_ponsel}=                       Get Web Element                                   ${input_no_ponsel}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_ponsel}
    Sleep                               0.3s
    Click Element                       ${input_no_ponsel}

    ${digits_random}=                   Generate Random String                            10    [NUMBERS]
    ${no_ponsel_random}=                Set Variable                                      08${digits_random}

    Input Text                          ${input_no_ponsel}      ${no_ponsel_random}

    Wait Until Page Contains Element    ${input_email}                        timeout=10s
    Scroll Element Into View            ${input_email}
    Click Element                       ${input_email}
    
    ${email}=    Evaluate    '${nama_depan}'.lower() + '.' + '${nama_belakang}'.lower() + '@yopmail.com'
    Input Text                          ${input_email}                        ${email}
    
    Log                                 Email generated: ${email}

    Wait Until Page Contains Element    ${input_tempat_lahir}                     timeout=10s
    ${el_tempat_lahir}=                 Get Web Element                           ${input_tempat_lahir}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_tempat_lahir}
    Sleep                               0.3s
    Execute Javascript                  arguments[0].click();                              ARGUMENTS    ${el_tempat_lahir}
    Input Text                          ${input_tempat_lahir}                     Bandung

    Wait Until Page Contains Element    ${input_tanggal_lahir}                    timeout=10s
    ${el_tgl_lahir}=                    Get Web Element                           ${input_tanggal_lahir}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_tgl_lahir}
    Sleep                               0.3s
    
    Execute Javascript                  arguments[0].click();                              ARGUMENTS    ${el_tgl_lahir}
    Sleep                               0.3s
    Press Keys                          ${input_tanggal_lahir}                    08/04/2026    ENTER
    Sleep                               0.5s
    
    Wait Until Page Contains Element    ${pilih_jenis_kelamin}                             timeout=10s
    ${el_jk}=                           Get Web Element                                    ${pilih_jenis_kelamin}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_jk}
    Sleep                               0.3s
    Execute Javascript                  arguments[0].click();                              ARGUMENTS    ${el_jk}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Jenis Kelamin' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_jenis_kelamin}                             timeout=10s
    Scroll Element Into View            ${value_jenis_kelamin}
    Click Element                       ${value_jenis_kelamin}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_status_pekerjaan}    timeout=10s
    ${el_sp}=                           Get Web Element              ${pilih_status_pekerjaan}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_sp}
    Sleep                               0.3s

    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_sp}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${value_status_pekerjaan}                           timeout=10s
    ${el_swasta}=                       Get Web Element                                     ${value_status_pekerjaan}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});     ARGUMENTS    ${el_swasta}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_swasta}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_kewarganegaraan}                           timeout=10s
    ${el_kw}=                           Get Web Element                                    ${pilih_kewarganegaraan}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_kw}
    Sleep                               0.3s
    Execute Javascript                  arguments[0].click();                              ARGUMENTS    ${el_kw}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Kewarganegaraan' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_kewarganegaraan}                       timeout=10s
    Scroll Element Into View            ${value_kewarganegaraan}
    Click Element                       ${value_kewarganegaraan}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_kode_pos}    timeout=10s
    Scroll Element Into View            ${input_kode_pos}
    Click Element                       ${input_kode_pos}
    Input Text                          ${input_kode_pos}    ${kode_pos}
    Sleep                               0.3s
    
    Wait Until Page Contains Element    ${input_alamat}                                   timeout=10s
    ${el_alamat}=                       Get Web Element                                   ${input_alamat}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_alamat}
    Sleep                               0.3s
    Click Element                       ${input_alamat}
    Input Text                          ${input_alamat}                                   ${val_alamat}

    Wait Until Page Contains Element    ${input_kota_domisili}                            timeout=10s
    ${el_kota}=                         Get Web Element                                   ${input_kota_domisili}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_kota}
    Sleep                               0.3s
    Click Element                       ${input_kota_domisili}
    Input Text                          ${input_kota_domisili}                            ${val_kota_domisili}

    Wait Until Page Contains Element    ${input_alamat_domisili}                          timeout=10s
    ${el_alamat_dom}=                   Get Web Element                                   ${input_alamat_domisili}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_alamat_dom}
    Sleep                               0.3s
    Click Element                       ${input_alamat_domisili}
    Input Text                          ${input_alamat_domisili}                          ${val_alamat_domisili}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${upload_ktp}    timeout=10s
    Choose File                         ${upload_ktp}    ${path_file_ktp}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${upload_npwp}   timeout=10s
    Choose File                         ${upload_npwp}   ${path_file_npwp}
    Sleep                               0.5s
    
    Wait Until Page Contains Element    ${input_no_ktp}                                   timeout=10s
    ${el_ktp}=                          Get Web Element                                   ${input_no_ktp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_ktp}
    Sleep                               0.3s
    Click Element                       ${input_no_ktp}
    
    ${nik_random}=                      Evaluate    "".join([str(random.randint(0, 9)) for _ in range(16)])    random
    Input Text                          ${input_no_ktp}                                   ${nik_random}

    Wait Until Page Contains Element    ${input_no_npwp}                                  timeout=10s
    ${el_npwp}=                         Get Web Element                                   ${input_no_npwp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_npwp}
    Sleep                               0.3s
    Click Element                       ${input_no_npwp}
    
    ${npwp_random}=                     Evaluate    "".join([str(random.randint(0, 9)) for _ in range(15)])    random
    Input Text                          ${input_no_npwp}                                  ${npwp_random}
    Sleep                               0.3s
    
    Wait Until Page Contains Element    ${input_nama_npwp}                                timeout=10s
    ${el_nama_npwp}=                    Get Web Element                                   ${input_nama_npwp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_nama_npwp}
    Sleep                               0.3s
    Click Element                       ${input_nama_npwp}

    ${nama_npwp}=                       Evaluate    '${nama_depan} ' + '${nama_belakang}'
    Input Text                          ${input_nama_npwp}                                ${nama_npwp}

    Sleep                               0.3s

Input Step Customer Corporate
    Wait Until Page Contains Element    ${pilih_tipe_customer}                 timeout=10s
    Scroll Element Into View            ${pilih_tipe_customer}
    ${el_dropdown_cust}=                Get Web Element                        ${pilih_tipe_customer}
    Execute Javascript                  arguments[0].click();                  ARGUMENTS    ${el_dropdown_cust}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Tipe Customer' and @data-state='open']    timeout=5s
    Sleep                               0.3s
    
    Wait Until Element Is Visible       ${value_tipe_customer_corporate}       timeout=10s
    Scroll Element Into View            ${value_tipe_customer_corporate}
    Click Element                       ${value_tipe_customer_corporate}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_membership}                    timeout=10s
    Scroll Element Into View            ${pilih_membership}
    ${el_dropdown_mem}=                 Get Web Element                        ${pilih_membership}
    Execute Javascript                  arguments[0].click();                  ARGUMENTS    ${el_dropdown_mem}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Membership' and @data-state='open']       timeout=5s
    Sleep                               0.3s
    
    Wait Until Element Is Visible       ${value_membership}                    timeout=10s
    Scroll Element Into View            ${value_membership}
    Click Element                       ${value_membership}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_nama_depan}                    timeout=10s
    Scroll Element Into View            ${input_nama_depan}
    Click Element                       ${input_nama_depan}
    ${nama_depan}=                      Evaluate    random.choice(['Ardi','Dimas','Fajar','Rizky','Budi','Ayu','Putri'])    random
    Input Text                          ${input_nama_depan}                    ${nama_depan}

    Wait Until Page Contains Element    ${input_nama_belakang}                 timeout=10s
    Scroll Element Into View            ${input_nama_belakang}
    Click Element                       ${input_nama_belakang}
    ${nama_belakang}=                   Evaluate    random.choice(['Pratama','Saputra','Wijaya','Nugroho','Santoso','Hidayat'])    random
    Input Text                          ${input_nama_belakang}                 ${nama_belakang}

    Wait Until Page Contains Element    ${input_no_ponsel}                                timeout=10s
    ${el_ponsel}=                       Get Web Element                                   ${input_no_ponsel}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_ponsel}
    Sleep                               0.3s
    Click Element                       ${input_no_ponsel}

    ${digits_random}=                   Generate Random String                            10    [NUMBERS]
    ${no_ponsel_random}=                Set Variable                                      08${digits_random}

    Input Text                          ${input_no_ponsel}      ${no_ponsel_random}

    Wait Until Page Contains Element    ${input_email}                        timeout=10s
    Scroll Element Into View            ${input_email}
    Click Element                       ${input_email}
    
    ${email}=    Evaluate    '${nama_depan}'.lower() + '.' + '${nama_belakang}'.lower() + '@yopmail.com'
    Input Text                          ${input_email}                        ${email}
    
    Log                                 Email generated: ${email}

    Wait Until Page Contains Element    ${input_tempat_lahir}                     timeout=10s
    ${el_tempat_lahir}=                 Get Web Element                           ${input_tempat_lahir}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_tempat_lahir}
    Sleep                               0.3s
    Execute Javascript                  arguments[0].click();                              ARGUMENTS    ${el_tempat_lahir}
    Input Text                          ${input_tempat_lahir}                     Bandung

    Wait Until Page Contains Element    ${input_tanggal_lahir}                    timeout=10s
    ${el_tgl_lahir}=                    Get Web Element                           ${input_tanggal_lahir}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_tgl_lahir}
    Sleep                               0.3s
    
    Execute Javascript                  arguments[0].click();                              ARGUMENTS    ${el_tgl_lahir}
    Sleep                               0.3s
    Press Keys                          ${input_tanggal_lahir}                    08/04/2026    ENTER
    Sleep                               0.5s
    
    Wait Until Page Contains Element    ${pilih_jenis_kelamin}                             timeout=10s
    ${el_jk}=                           Get Web Element                                    ${pilih_jenis_kelamin}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_jk}
    Sleep                               0.3s
    Execute Javascript                  arguments[0].click();                              ARGUMENTS    ${el_jk}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Jenis Kelamin' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_jenis_kelamin}                             timeout=10s
    Scroll Element Into View            ${value_jenis_kelamin}
    Click Element                       ${value_jenis_kelamin}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_status_pekerjaan}    timeout=10s
    ${el_sp}=                           Get Web Element              ${pilih_status_pekerjaan}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_sp}
    Sleep                               0.3s

    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_sp}
    Sleep                               0.5s

    Wait Until Element Is Visible       ${value_status_pekerjaan}                           timeout=10s
    ${el_swasta}=                       Get Web Element                                     ${value_status_pekerjaan}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});     ARGUMENTS    ${el_swasta}
    Execute Javascript                  arguments[0].click();                               ARGUMENTS    ${el_swasta}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_kewarganegaraan}                           timeout=10s
    ${el_kw}=                           Get Web Element                                    ${pilih_kewarganegaraan}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});    ARGUMENTS    ${el_kw}
    Sleep                               0.3s
    Execute Javascript                  arguments[0].click();                              ARGUMENTS    ${el_kw}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Kewarganegaraan' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_kewarganegaraan}                       timeout=10s
    Scroll Element Into View            ${value_kewarganegaraan}
    Click Element                       ${value_kewarganegaraan}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_kode_pos}    timeout=10s
    Scroll Element Into View            ${input_kode_pos}
    Click Element                       ${input_kode_pos}
    Input Text                          ${input_kode_pos}    ${kode_pos}
    Sleep                               0.3s
    
    Wait Until Page Contains Element    ${input_alamat}                                   timeout=10s
    ${el_alamat}=                       Get Web Element                                   ${input_alamat}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_alamat}
    Sleep                               0.3s
    Click Element                       ${input_alamat}
    Input Text                          ${input_alamat}                                   ${val_alamat}

    Wait Until Page Contains Element    ${input_kota_domisili}                            timeout=10s
    ${el_kota}=                         Get Web Element                                   ${input_kota_domisili}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_kota}
    Sleep                               0.3s
    Click Element                       ${input_kota_domisili}
    Input Text                          ${input_kota_domisili}                            ${val_kota_domisili}

    Wait Until Page Contains Element    ${input_alamat_domisili}                          timeout=10s
    ${el_alamat_dom}=                   Get Web Element                                   ${input_alamat_domisili}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_alamat_dom}
    Sleep                               0.3s
    Click Element                       ${input_alamat_domisili}
    Input Text                          ${input_alamat_domisili}                          ${val_alamat_domisili}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${upload_ktp}    timeout=10s
    Choose File                         ${upload_ktp}    ${path_file_ktp}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${upload_npwp}   timeout=10s
    Choose File                         ${upload_npwp}   ${path_file_npwp}
    Sleep                               0.5s
    
    Wait Until Page Contains Element    ${input_no_ktp}                                   timeout=10s
    ${el_ktp}=                          Get Web Element                                   ${input_no_ktp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_ktp}
    Sleep                               0.3s
    Click Element                       ${input_no_ktp}
    
    ${nik_random}=                      Evaluate    "".join([str(random.randint(0, 9)) for _ in range(16)])    random
    Input Text                          ${input_no_ktp}                                   ${nik_random}

    Wait Until Page Contains Element    ${input_no_npwp}                                  timeout=10s
    ${el_npwp}=                         Get Web Element                                   ${input_no_npwp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_npwp}
    Sleep                               0.3s
    Click Element                       ${input_no_npwp}
    
    ${npwp_random}=                     Evaluate    "".join([str(random.randint(0, 9)) for _ in range(15)])    random
    Input Text                          ${input_no_npwp}                                  ${npwp_random}
    Sleep                               0.3s
    
    Wait Until Page Contains Element    ${input_nama_npwp}                                timeout=10s
    ${el_nama_npwp}=                    Get Web Element                                   ${input_nama_npwp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_nama_npwp}
    Sleep                               0.3s
    Click Element                       ${input_nama_npwp}

    ${nama_npwp}=                       Evaluate    '${nama_depan} ' + '${nama_belakang}'
    Input Text                          ${input_nama_npwp}                                ${nama_npwp}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_pic_name}                                 timeout=10s
    ${el_name}=                         Get Web Element                                   ${input_pic_name}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_name}
    Sleep                               0.2s
    Click Element                       ${input_pic_name}
    
    ${pic_random_str}=                  Generate Random String                            8    [LETTERS]
    ${pic_name}=                        Set Variable                                      PIC ${pic_random_str}
    Input Text                          ${input_pic_name}                                 ${pic_name}

    Wait Until Page Contains Element    ${input_pic_phone}                                timeout=10s
    ${el_phone}=                        Get Web Element                                   ${input_pic_phone}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_phone}
    Sleep                               0.2s
    Click Element                       ${input_pic_phone}
    
    ${digits_random}=                   Generate Random String                            10    [NUMBERS]
    ${pic_phone}=                       Set Variable                                      08${digits_random}
    Input Text                          ${input_pic_phone}                                ${pic_phone}

    Wait Until Page Contains Element    ${input_pic_email}                                timeout=10s
    ${el_email}=                        Get Web Element                                   ${input_pic_email}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_email}
    Sleep                               0.2s
    Click Element                       ${input_pic_email}
    
    ${pic_str_lower}=                   Convert To Lower Case                             ${pic_random_str}
    ${pic_email}=                       Set Variable                                      pic.${pic_str_lower}@yopmail.com
    Input Text                          ${input_pic_email}                                ${pic_email}
    Sleep                               0.3s

Input Step Bank
    Wait Until Page Contains Element    ${pilih_nama_bank}                                timeout=10s
    ${el_bank}=                         Get Web Element                                   ${pilih_nama_bank}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_bank}
    Sleep                               0.3s

    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_bank}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Nama Bank' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_bank}                                 timeout=10s
    Scroll Element Into View            ${value_bank}
    Click Element                       ${value_bank}
    Sleep                               0.5s
    
    Wait Until Page Contains Element    ${input_cabang_bank}                      timeout=10s
    ${el_cabang}=                       Get Web Element                                   ${input_cabang_bank}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_cabang}
    Sleep                               0.3s
    Click Element                       ${input_cabang_bank}
    Input Text                          ${input_cabang_bank}                      ${value_cabang_bank}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_nama_pemilik_rekening}                    timeout=10s
    ${el_pemilik}=                      Get Web Element                                   ${input_nama_pemilik_rekening}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_pemilik}
    Sleep                               0.3s
    
    Click Element                       ${input_nama_pemilik_rekening}

    ${nama_pemilik_rekening}=           Evaluate    random.choice(['Ardi','Dimas','Fajar','Rizky','Budi','Ayu','Putri'])    random
    Input Text                          ${input_nama_pemilik_rekening}                    ${nama_pemilik_rekening}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_nomor_rekening}                           timeout=10s
    ${el_norek}=                        Get Web Element                                   ${input_nomor_rekening}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_norek}
    Sleep                               0.3s
    
    Click Element                       ${input_nomor_rekening}

    ${no_rekening_random}=              Evaluate    "".join([str(random.randint(0, 9)) for _ in range(10)])    random
    Input Text                          ${input_nomor_rekening}                           ${no_rekening_random}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${upload_buku_tabungan}    timeout=10s
    Choose File                         ${upload_buku_tabungan}    ${path_file_buku_tabungan}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_catatan}                                  timeout=10s
    ${el_notes}=                        Get Web Element                                   ${input_catatan}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_notes}
    Sleep                               0.3s

    Click Element                       ${input_catatan}
    ${catatan}=                         Generate Random String                            20    [LETTERS]
    Input Text                          ${input_catatan}                                  ${catatan}
    Sleep                               0.3s

Input Step Other
    Wait Until Page Contains Element    ${value_showroom_ada}                             timeout=10s
    ${el_radio}=                        Get Web Element                                   ${value_showroom_ada}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_radio}
    Sleep                               0.3s
    
    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_radio}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${input_nama_showroom_locator}                    timeout=10s
    ${el_nama}=                         Get Web Element                                   ${input_nama_showroom_locator}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_nama}
    Sleep                               0.3s
    Click Element                       ${input_nama_showroom_locator}
    Input Text                          ${input_nama_showroom_locator}                    ${input_nama_showroom}

    Wait Until Page Contains Element    ${input_alamat_showroom_locator}                  timeout=10s
    ${el_alamat}=                       Get Web Element                                   ${input_alamat_showroom_locator}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_alamat}
    Sleep                               0.3s
    Click Element                       ${input_alamat_showroom_locator}
    Input Text                          ${input_alamat_showroom_locator}                  ${input_alamat_showroom}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${pilih_tujuan_beli}                              timeout=10s
    ${el_tujuan}=                       Get Web Element                                   ${pilih_tujuan_beli}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_tujuan}
    Sleep                               0.3s

    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_tujuan}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Tujuan Beli' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_tujuan_beli}                        timeout=10s
    Scroll Element Into View            ${value_tujuan_beli}
    Click Element                       ${value_tujuan_beli}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_sumber_dana}                              timeout=10s
    ${el_sumber}=                       Get Web Element                                   ${pilih_sumber_dana}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_sumber}
    Sleep                               0.3s

    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_sumber}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Sumber Dana' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_sumber_dana}                               timeout=10s
    Scroll Element Into View            ${value_sumber_dana}
    Click Element                       ${value_sumber_dana}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_transaksi_untuk}                          timeout=10s
    ${el_purpose}=                      Get Web Element                                   ${pilih_transaksi_untuk}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_purpose}
    Sleep                               0.3s
    
    Click Element                       ${pilih_transaksi_untuk}
    Input Text                          ${pilih_transaksi_untuk}                          ${value_transaksi_untuk}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${pilih_jenis_lelang}                             timeout=10s
    ${el_lelang}=                       Get Web Element                                   ${pilih_jenis_lelang}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_lelang}
    Sleep                               0.3s

    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_lelang}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Jenis Lelang' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_jenis_lelang}                                timeout=10s
    Scroll Element Into View            ${value_jenis_lelang}
    Click Element                       ${value_jenis_lelang}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_other1}                                  timeout=10s
    ${el1}=                             Get Web Element                                   ${input_other1}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el1}
    Sleep                               0.2s
    Click Element                       ${input_other1}
    ${other1}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other1}                                  ${other1}

    Wait Until Page Contains Element    ${input_other2}                                  timeout=10s
    ${el2}=                             Get Web Element                                   ${input_other2}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el2}
    Sleep                               0.2s
    Click Element                       ${input_other2}
    ${other2}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other2}                                  ${other2}

    Wait Until Page Contains Element    ${input_other3}                                  timeout=10s
    ${el3}=                             Get Web Element                                   ${input_other3}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el3}
    Sleep                               0.2s
    Click Element                       ${input_other3}
    ${other3}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other3}                                  ${other3}

    Wait Until Page Contains Element    ${input_other4}                                  timeout=10s
    ${el4}=                             Get Web Element                                   ${input_other4}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el4}
    Sleep                               0.2s
    Click Element                       ${input_other4}
    ${other4}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other4}                                  ${other4}

    Wait Until Page Contains Element    ${input_other5}                                  timeout=10s
    ${el5}=                             Get Web Element                                   ${input_other5}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el5}
    Sleep                               0.2s
    Click Element                       ${input_other5}
    ${other5}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other5}                                  ${other5}
    Sleep                               0.3s

Input Step Other Tanpa Showroom
    Wait Until Page Contains Element    ${pilih_tujuan_beli}                              timeout=10s
    ${el_tujuan}=                       Get Web Element                                   ${pilih_tujuan_beli}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_tujuan}
    Sleep                               0.3s

    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_tujuan}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Tujuan Beli' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_tujuan_beli}                        timeout=10s
    Scroll Element Into View            ${value_tujuan_beli}
    Click Element                       ${value_tujuan_beli}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_sumber_dana}                              timeout=10s
    ${el_sumber}=                       Get Web Element                                   ${pilih_sumber_dana}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_sumber}
    Sleep                               0.3s

    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_sumber}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Sumber Dana' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_sumber_dana}                               timeout=10s
    Scroll Element Into View            ${value_sumber_dana}
    Click Element                       ${value_sumber_dana}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${pilih_transaksi_untuk}                          timeout=10s
    ${el_purpose}=                      Get Web Element                                   ${pilih_transaksi_untuk}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_purpose}
    Sleep                               0.3s
    
    Click Element                       ${pilih_transaksi_untuk}
    Input Text                          ${pilih_transaksi_untuk}                          ${value_transaksi_untuk}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${pilih_jenis_lelang}                             timeout=10s
    ${el_lelang}=                       Get Web Element                                   ${pilih_jenis_lelang}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_lelang}
    Sleep                               0.3s

    Execute Javascript                  arguments[0].click();                             ARGUMENTS    ${el_lelang}

    Wait Until Page Contains Element    xpath=//button[@aria-label='Jenis Lelang' and @data-state='open']    timeout=5s
    Sleep                               0.3s

    Wait Until Element Is Visible       ${value_jenis_lelang}                                timeout=10s
    Scroll Element Into View            ${value_jenis_lelang}
    Click Element                       ${value_jenis_lelang}
    Sleep                               0.5s

    Wait Until Page Contains Element    ${input_other1}                                  timeout=10s
    ${el1}=                             Get Web Element                                   ${input_other1}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el1}
    Sleep                               0.2s
    Click Element                       ${input_other1}
    ${other1}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other1}                                  ${other1}

    Wait Until Page Contains Element    ${input_other2}                                  timeout=10s
    ${el2}=                             Get Web Element                                   ${input_other2}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el2}
    Sleep                               0.2s
    Click Element                       ${input_other2}
    ${other2}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other2}                                  ${other2}

    Wait Until Page Contains Element    ${input_other3}                                  timeout=10s
    ${el3}=                             Get Web Element                                   ${input_other3}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el3}
    Sleep                               0.2s
    Click Element                       ${input_other3}
    ${other3}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other3}                                  ${other3}

    Wait Until Page Contains Element    ${input_other4}                                  timeout=10s
    ${el4}=                             Get Web Element                                   ${input_other4}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el4}
    Sleep                               0.2s
    Click Element                       ${input_other4}
    ${other4}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other4}                                  ${other4}

    Wait Until Page Contains Element    ${input_other5}                                  timeout=10s
    ${el5}=                             Get Web Element                                   ${input_other5}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el5}
    Sleep                               0.2s
    Click Element                       ${input_other5}
    ${other5}=                          Generate Random String                            20    [LETTERS]
    Input Text                          ${input_other5}                                  ${other5}
    Sleep                               0.3s

Validation File Size
    Wait Until Page Contains Element    ${upload_ktp}                                     timeout=10s
    ${el_ktp}=                          Get Web Element                                   ${upload_ktp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_ktp}
    Sleep                               0.3s
    Choose File                         ${upload_ktp}                                     ${path_file_3mb}
    
    Wait Until Page Contains Element    ${txt_error_max_file_size}                        timeout=10s
    Wait Until Element Is Visible       ${txt_error_max_file_size}                        timeout=10s
    Element Text Should Be              ${txt_error_max_file_size}                        Maximal file upload 2MB
    Log To Console                      \n[SUCCESS] Validation alert error KTP terverifikasi.

    Wait Until Page Contains Element    ${upload_npwp}                                    timeout=10s
    ${el_npwp}=                         Get Web Element                                   ${upload_npwp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_npwp}
    Sleep                               0.3s
    Choose File                         ${upload_npwp}                                    ${path_file_3mb}

    Wait Until Page Contains Element    ${txt_error_max_file_size}                        timeout=10s
    Wait Until Element Is Visible       ${txt_error_max_file_size}                        timeout=10s
    Element Text Should Be              ${txt_error_max_file_size}                        Maximal file upload 2MB
    Log To Console                      \n[SUCCESS] Validation alert error NPWP terverifikasi.

Validation Invalid File Format
    Wait Until Page Contains Element    ${upload_ktp}                                     timeout=10s
    ${el_ktp}=                          Get Web Element                                   ${upload_ktp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_ktp}
    Sleep                               0.3s
    Choose File                         ${upload_ktp}                                     ${path_file_invalid_format}
    
    Wait Until Page Contains Element    ${txt_error_invalid_format}                       timeout=10s
    Wait Until Element Is Visible       ${txt_error_invalid_format}                       timeout=10s
    Element Text Should Be              ${txt_error_invalid_format}                       Tipe file tidak valid.
    Log To Console                      \n[SUCCESS] Validation alert error tipe file KTP terverifikasi.

    Wait Until Page Contains Element    ${upload_npwp}                                    timeout=10s
    ${el_npwp}=                         Get Web Element                                   ${upload_npwp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_npwp}
    Sleep                               0.3s
    Choose File                         ${upload_npwp}                                    ${path_file_invalid_format}

    Wait Until Page Contains Element    ${txt_error_invalid_format}                       timeout=10s
    Wait Until Element Is Visible       ${txt_error_invalid_format}                       timeout=10s
    Element Text Should Be              ${txt_error_invalid_format}                       Tipe file tidak valid.
    Log To Console                      \n[SUCCESS] Validation alert error tipe file NPWP terverifikasi.

Verify Mandatory Field PIC Validation
    Wait Until Page Contains Element    ${klik_selanjutnya}                                timeout=10s
    ${el_next}=                         Get Web Element                                   ${klik_selanjutnya}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_next}
    Sleep                               0.3s
    Click Element                       ${klik_selanjutnya}

    Wait Until Page Contains Element    ${txt_error_wajib_diisi}                          timeout=10s
    Wait Until Element Is Visible       ${txt_error_wajib_diisi}                          timeout=10s
    
    ${count}=                           Get Element Count                                 ${txt_error_wajib_diisi}
    Should Be True                      ${count} > 0
    
    Log To Console                      \n[SUCCESS] Pesan error 'Wajib diisi' sebanyak ${count} elemen terverifikasi!

Verify Invalid Format KTP And NPWP Validation
    Wait Until Page Contains Element    ${input_no_ktp}                                   timeout=10s
    ${el_ktp}=                          Get Web Element                                   ${input_no_ktp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_ktp}
    Sleep                               0.3s
    Click Element                       ${input_no_ktp}
    
    ${nik_invalid}=                     Evaluate    "".join([str(random.randint(0, 9)) for _ in range(14)])    random
    Input Text                          ${input_no_ktp}                                   ${nik_invalid}

    Wait Until Page Contains Element    ${input_no_npwp}                                  timeout=10s
    ${el_npwp}=                         Get Web Element                                   ${input_no_npwp}
    Execute Javascript                  arguments[0].scrollIntoView({block: 'center'});   ARGUMENTS    ${el_npwp}
    Sleep                               0.3s
    Click Element                       ${input_no_npwp}
    
    ${npwp_invalid}=                    Evaluate    "".join([str(random.randint(0, 9)) for _ in range(13)])    random
    Input Text                          ${input_no_npwp}                                  ${npwp_invalid}
    Sleep                               0.3s

    Wait Until Page Contains Element    ${txt_error_format_ktp}                           timeout=10s
    Wait Until Element Is Visible       ${txt_error_format_ktp}                           timeout=10s
    Element Text Should Be              ${txt_error_format_ktp}                           Format KTP tidak valid
    Log To Console                      \n[SUCCESS] Pesan error 'Format KTP tidak valid' terverifikasi.

    Wait Until Page Contains Element    ${txt_error_format_npwp}                          timeout=10s
    Wait Until Element Is Visible       ${txt_error_format_npwp}                          timeout=10s
    Element Text Should Be              ${txt_error_format_npwp}                           Format NPWP tidak valid
    Log To Console                      \n[SUCCESS] Pesan error 'Format NPWP tidak valid' terverifikasi.