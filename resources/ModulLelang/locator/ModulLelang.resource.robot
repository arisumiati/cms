*** Settings ***
Library  SeleniumLibrary
Library    DateTime
Library  String
Variables  ../locator/LocatorModulLelang.py

*** Keywords ***
Click Tambah Lelang
    Wait Until Element Is Visible  ${button_create}     timeout=30s
    Click Element  ${button_create}

Click Simpan Lelang Tab Ringkasan
    Wait Until Element Is Visible   ${simpan_tab_ringkasan}     timeout=10s
    Wait Until Element Is Enabled   ${simpan_tab_ringkasan}     timeout=10s

    Execute JavaScript      var btn =   Array.from(document.querySelectorAll("div[role='dialog'] button")); var simpanBtn = btn.find(b => b.textContent.trim() === 'Simpan'); if(simpanBtn) { simpanBtn.click(); }
    Sleep   1s

    ${is_popup_visible}=    Run Keyword And Return Status   Element Should Be Visible
    IF  not ${is_popup_visible}
        Execute JavaScript  var btn =   Array.from(document.querySelectorAll("div[role='dialog'] button")); var simpanBtn = btn.find(b => b.textContent.trim() === 'Simpan'); if(simpanBtn) { simpanBtn.click(); }
        Sleep   1s
    END

Click Simpan Lelang Tab Objek Lelang
    Wait Until Element Is Visible   ${simpan_tab_objek_lelang}  timeout=10s
    Wait Until Element Is Enabled   ${simpan_tab_objek_lelang}  timeout=10s
    Scroll Element Into View        ${simpan_tab_objek_lelang}
    Click Element                   ${simpan_tab_objek_lelang}

Click Simpan Lelang Tab Bidder
    Wait Until Element Is Visible  ${simpan_tab_bidder_lelang}  timeout=10s  
    Wait Until Element Is Enabled  ${simpan_tab_bidder_lelang}  timeout=10s

    Scroll Element Into View       ${simpan_tab_bidder_lelang}  
    Click Element                  ${simpan_tab_bidder_lelang}
    
Click Pop Up Konfirmasi
    Wait Until Element Is Visible       ${pop_up_konfirmasi}    timeout=10s
    Wait Until Element Is Enabled       ${pop_up_konfirmasi}    timeout=10s
    Scroll Element Into View    ${pop_up_konfirmasi}
    Click Element               ${pop_up_konfirmasi}

Input List Lelang Ringkasan

    ${tommorow}=    Get Current Date    result_format=%Y-%m-%d    increment=+1 day
    
    Wait Until Element Is Visible  ${input_nama_lelang}
    Input Text  ${input_nama_lelang}  ${nama_lelang}
    Sleep    3s

    Click Element  ${input_objek_lelang}
    Click Element    ${switch_objek_lelang}

    Click Element   ${input_jenis_lelang}
    Wait Until Element Is Visible   ${input_jenis_lelang}     timeout=10s

    Wait Until Element Is Visible   ${switch_jenis_lelang}    timeout=10s
    Click Element   ${switch_jenis_lelang}

    Wait Until Element Is Visible   ${input_cabang}     timeout=10s
    Click Element  ${input_cabang}

    Wait Until Element Is Visible   ${cabang}   timeout=10s
    Click Element   ${cabang}

    Wait Until Element Is Visible   ${switch_show_auction}      timeout=10s
    Scroll Element Into View        ${switch_show_auction}
    Click Element                   ${switch_show_auction}
    Sleep    1s
    
    ${besok}=    Get Current Date    result_format=%Y-%m-%d    increment=+1 day
    
    Scroll Element Into View     ${input_tanggal_mulai}
    Sleep             1s
    Wait Until Element Is Visible   ${input_tanggal_mulai}      timeout=10s
    Scroll Element Into View        ${input_tanggal_mulai}
    Sleep   1s

    Press Keys      ${input_tanggal_mulai}  CTRL+a+BACKSPACE
    Press Keys      ${input_tanggal_mulai}  07272026
    Press Keys      ${input_tanggal_mulai}  TAB
    Sleep   1s


    Input Text  ${input_waktu_mulai}  ${waktu_mulai_lelang}
    Press Keys  ${input_waktu_mulai}    TAB
    Sleep   1s

    Wait Until Element Is Visible   ${input_tanggal_selesai}    timeout=10s
    Scroll Element Into View    ${input_tanggal_selesai}
    Sleep             1s

    Press Keys        ${input_tanggal_selesai}    CTRL+a+BACKSPACE
    Press Keys        ${input_tanggal_selesai}    07282026
    Press Keys        ${input_tanggal_selesai}    TAB
    Sleep   1s
   
    Input Text    ${input_waktu_selesai}    ${waktu_selesai_lelang}
    Press Keys      ${input_waktu_selesai}  TAB
    Sleep   1s

    Scroll Element Into View    ${input_kelipatan}
    Sleep   1s
    Press Keys  ${input_kelipatan}  ${kelipatan_harga_bid}
    Press Keys  ${input_kelipatan}  TAB
    Sleep   1s
    


    Wait Until Element Is Visible    ${input_tanggal_wanpes}    timeout=10s
    Scroll Element Into View         ${input_tanggal_wanpes}
    Press Keys                       ${input_tanggal_wanpes}    CTRL+a+BACKSPACE
    Press Keys                       ${input_tanggal_wanpes}    07292026
    Press Keys                       ${input_tanggal_wanpes}    TAB
    Sleep                            1s

    Wait Until Element Is Visible    ${input_waktu_wanpes}      timeout=10s
    Scroll Element Into View         ${input_waktu_wanpes}
    Press Keys                       ${input_waktu_wanpes}      CTRL+a+BACKSPACE
    Press Keys                       ${input_waktu_wanpes}      ${waktu_wanpres}
    Press Keys                       ${input_waktu_wanpes}      TAB
    Sleep                            1s

Input Objek Lelang
    # 1. Masuk ke Tab Objek Lelang
    Wait Until Element Is Visible    ${tab_objek_lelang}         timeout=10s
    Click Element                    ${tab_objek_lelang}
    Sleep                            1s

    # 2. Buka Modal / Pop-up Tambah Objek Lelang
    Wait Until Element Is Visible    ${tambah_objek_lelang}      timeout=10s
    Click Element                    ${tambah_objek_lelang}
    Sleep                            2s

    # 3. Pilih 10 Objek Lelang (Baris 1 sampai 10 pada Pop-up Modal)
    FOR    ${index}    IN RANGE    1    11
        ${checkbox_row}=    Set Variable    xpath=(//div[@role='dialog'])[last()]//tbody/tr[${index}]//input[@type='checkbox']
        
        Wait Until Element Is Visible    ${checkbox_row}         timeout=10s
        Scroll Element Into View         ${checkbox_row}
        Click Element                    ${checkbox_row}
        Sleep                            0.3s
    END

    # 4. Klik Tombol Tambahkan Objek Lelang
    Scroll Element Into View         ${tambahkan_objek_lelang}
    Wait Until Element Is Visible    ${tambahkan_objek_lelang}   timeout=10s
    Click Element                    ${tambahkan_objek_lelang}
    Sleep                            2s

    # 5. Loop untuk Mengisi No Lot (1 sampai 10) pada Tabel
    ${total}=    Get Element Count    xpath=//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input

    FOR    ${i}    IN RANGE    1    ${total + 1}
        ${lot_xpath}=    Set Variable    (//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input)[${i}]
        
        Wait Until Element Is Visible    xpath=${lot_xpath}      timeout=10s
        Scroll Element Into View         xpath=${lot_xpath}
        Sleep                            0.2s

        # Pengisian No Lot
        Press Keys    xpath=${lot_xpath}    CTRL+a+BACKSPACE
        Press Keys    xpath=${lot_xpath}    ${i}
        Press Keys    xpath=${lot_xpath}    ENTER
        Sleep         0.3s
    END

Input Admin Fee Per Objek Lelang
    Sleep    3s
    Scroll Element Into View    ${tambah_objek_lelang}

    ${total}=    Get Element Count    xpath=//th[normalize-space()='ADMIN FEE']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='ADMIN FEE']/preceding-sibling::th)+1]//input

    FOR    ${i}    IN RANGE    1    ${total + 1}
        # Tambahkan tanda kurung (...) pada XPath agar indexing [${i}] bekerja presisi
        ${admin_xpath}=    Set Variable    xpath=(//th[normalize-space()='ADMIN FEE']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='ADMIN FEE']/preceding-sibling::th)+1]//input)[${i}]
        
        ${input_exist}=    Run Keyword And Return Status    Element Should Be Visible    ${admin_xpath}    timeout=2s

        IF    ${input_exist}
            Wait Until Element Is Enabled    ${admin_xpath}    timeout=10s
            Scroll Element Into View         ${admin_xpath}

            # Pembersihan isi & pengisian Admin Fee
            Press Keys    ${admin_xpath}    CTRL+a+BACKSPACE
            Input Text    ${admin_xpath}    500000
            Press Keys    ${admin_xpath}    TAB
            Sleep         0.3s
        END
    END

Input Bidder
    Wait Until Element Is Visible    ${tab_bidder}              timeout=10s
    Scroll Element Into View         ${tab_bidder}
    Click Element                    ${tab_bidder}
    Sleep                            1s

    Wait Until Element Is Visible    ${tambah_bidder}           timeout=10s
    Wait Until Element Is Enabled    ${tambah_bidder}           timeout=10s
    Click Element                    ${tambah_bidder}

    Wait Until Element Is Visible    ${cari_bidder}             timeout=10s
    Press Keys                       ${cari_bidder}             CTRL+a+BACKSPACE
    Press Keys                       ${cari_bidder}             ${bidder}
    Sleep                            1s

    Wait Until Element Is Visible    ${pilih_bidder}            timeout=10s
    Click Element                    ${pilih_bidder}

    Wait Until Element Is Visible    ${tambahkan_bidder}        timeout=10s
    Click Element                    ${tambahkan_bidder}
    Sleep                            1s

    Wait Until Element Is Visible    ${input_lot_aktif}         timeout=10s
    Scroll Element Into View         ${input_lot_aktif}
    Click Element                    ${input_lot_aktif}
    Sleep                            1s

    FOR    ${i}    IN RANGE    1    11
        # Format {index} dengan nilai ${i} (menjadi teks '1', '2', dst)
        ${opsi_lot}=    Format String    ${opsi_lot_by_index}    index=${i}
        
        Wait Until Element Is Visible    ${opsi_lot}            timeout=5s
        Click Element                    ${opsi_lot}
        Sleep                            0.3s
    END

    Click Element                    ${input_lot_aktif}
    Sleep                            1s

Input Group
    Wait Until Element Is Visible   ${tab_bidder}   timeout=10s
    Click Element                   ${tab_bidder}
    Sleep                           1s

    Wait Until Element Is Visible   ${tambah_group}     timeout=10s
    Scroll Element Into View        ${tambah_group}
    Click Element                   ${tambah_group}

    Wait Until Element Is Visible   ${pilih_kode_group}     timeout=10s
    Click Element                   ${pilih_kode_group}
    Sleep                           1s

    Wait Until Element Is Visible   ${click_kode_group}     timeout=10s
    Click Element                   ${click_kode_group}
    Sleep                           1s

    Wait Until Element Is Visible   ${tambahkan_group}      timeout=10s
    Scroll Element Into View        ${tambahkan_group}
    Click Element                   ${tambahkan_group}
    Sleep                           1s

Edit Lelang
    Input Text  ${cari_id_lelang}  ${id_lelang}
    Sleep    3s
    Click Element  ${klik_view_lelang}
    Sleep    3s
    Click Element  ${edit_lelang}

Edit List Lelang Ringkasan
    ${tommorow}=    Get Current Date    result_format=%Y-%m-%d    increment=+2 day
    Wait Until Element Is Visible  ${input_nama_lelang}
    Sleep    3s
    Input Text  ${input_nama_lelang}  ${edit_nama_lelang}

    Click Element  ${pilih_cabang}
    Sleep    2s
    Click Element  ${edit_cabang}
   
    Input Text  ${input_kelipatan}  ${edit_kelipatan_harga_bid}

    Input Text  ${input_waktu_wanpes}  ${edit_waktu_wanpres}

Switch Admin Fee To Persentase
    Wait Until Element Is Visible    ${radio_persentase}     timeout=10s
    Scroll Element Into View         ${radio_persentase}
    Click Element                    ${radio_persentase}
    Sleep                            1s

    Wait Until Element Is Visible    ${input_admin_fee}      timeout=10s
    Press Keys                       ${input_admin_fee}      CTRL+a+BACKSPACE
    Input Text                       ${input_admin_fee}      ${admin_fee_persen}
    Sleep                            1s

Uncheck Lelang Customer Regular
    Wait Until Element Is Visible    ${checkbox_customer_regular}    timeout=10s
    Scroll Element Into View         ${checkbox_customer_regular}
    
    ${is_checked}=    Run Keyword And Return Status    Checkbox Should Be Selected    ${checkbox_customer_regular}
    Run Keyword If    ${is_checked}    Click Element    ${checkbox_customer_regular}
    Sleep               1s

Input Invalid Schedule End Time Earlier Than Start Time
    Wait Until Element Is Visible    ${input_tanggal_mulai}      timeout=10s
    Press Keys                       ${input_tanggal_mulai}      CTRL+a+BACKSPACE    07232026    TAB

    Wait Until Element Is Visible    ${input_waktu_mulai}        timeout=10s
    Press Keys                       ${input_waktu_mulai}        CTRL+a+BACKSPACE    0500PM      TAB

    Execute Javascript               document.querySelector('div[class*="overflow"]').scrollTop = 400
    Sleep                            1s

    # 2. Set Tanggal Selesai (Sama) & Waktu Selesai (LEBIH AWAL / INVALID)
    Wait Until Element Is Visible    ${input_tanggal_selesai}    timeout=10s
    Press Keys                       ${input_tanggal_selesai}    CTRL+a+BACKSPACE    07232026    TAB

    Wait Until Element Is Visible    ${input_waktu_selesai}      timeout=10s
    Press Keys                       ${input_waktu_selesai}      CTRL+a+BACKSPACE    0100PM      TAB
    Sleep                            1s

    # 3. Validasi Pesan Error Merah
    ${err_msg_locator}=             Set Variable    xpath://p[contains(@class,'text-danger') and contains(text(),'Waktu selesai harus lebih dari waktu mulai')]
    Wait Until Element Is Visible    ${err_msg_locator}          timeout=5s
    Element Should Be Visible        ${err_msg_locator}

Verify Free Admin Fee Overrides Admin Fee To Zero
    # 1. Ambil Web Element untuk sel TD kolom FREE ADMIN FEE di baris 1
    ${cb_td_xpath}=                     Set Variable              xpath=//table//tbody/tr[1]/td[count(//th[contains(.,'FREE ADMIN FEE')]/preceding-sibling::th)+1]
    Wait Until Page Contains Element    ${cb_td_xpath}            timeout=10s
    ${cb_td_el}=                        Get Web Element           ${cb_td_xpath}

    # 2. Scroll Horizontal via TD
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'instant', block: 'nearest', inline: 'end'});    ARGUMENTS    ${cb_td_el}
    Sleep                               0.5s

    # 3. Klik Checkbox FREE ADMIN FEE
    ${cb_input_el}=                     Get Web Element           ${cb_td_xpath}//*[self::input or self::label or contains(@class,'checkbox')]
    Execute Javascript                  arguments[0].click();     ARGUMENTS    ${cb_input_el}
    Sleep                               1.5s

    # 4. Verifikasi Nilai '0' atau 'Rp 0' langsung dari container
    ${admin_fee_text}=                  Get Text                  ${admin_fee_container}
    Should Contain                      ${admin_fee_text}         0

Input Objek Lelang Free Admin
    Click Element    ${tab_objek_lelang}
    Click Element    ${tambah_objek_lelang}
    Sleep    5s
    Wait Until Element Is Visible    ${pilih_objek_lelang}
    Click Element    ${pilih_objek_lelang}

    Scroll Element Into View    ${tambahkan_objek_lelang} 
    Click Element    ${tambahkan_objek_lelang}    
    
    ${total}=    Get Element Count    xpath=//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input

    FOR    ${i}    IN RANGE    1    ${total + 1}
        ${lot_xpath}=    Set Variable    (//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input)[${i}]
        Wait Until Element Is Visible    xpath=${lot_xpath}    10s
        Scroll Element Into View         xpath=${lot_xpath}
        Sleep                            0.2s
        
        Press Keys                       xpath=${lot_xpath}    CONTROL+a+BACKSPACE
        Press Keys                       xpath=${lot_xpath}    ${i}
        Press Keys                       xpath=${lot_xpath}    ENTER
        Sleep                            0.3s
    END

    # --- CENTANG FREE ADMIN FEE ---
    ${el_cb}=                Get Web Element           ${checkbox_free_admin}
    Execute Javascript       arguments[0].click();     ARGUMENTS    ${el_cb}
    Sleep                    1s

Click Checkbox Rekomendasi
    # 1. Ambil elemen sel TD untuk kolom REKOMENDASI pada baris 1
    Wait Until Page Contains Element    ${checkbox_rekomendasi}    timeout=10s
    ${rekomendasi_td_el}=               Get Web Element           ${checkbox_rekomendasi}

    # 2. Scroll horizontal ke kanan agar kolom REKOMENDASI terlihat
    Execute Javascript                  arguments[0].scrollIntoView({behavior: 'instant', block: 'nearest', inline: 'end'});    ARGUMENTS    ${rekomendasi_td_el}
    Sleep                               0.5s

    # 3. Klik Checkbox Rekomendasi
    ${rekomendasi_input_el}=            Get Web Element           ${checkbox_rekomendasi}//*[self::input or self::label or contains(@class,'checkbox')]
    Execute Javascript                  arguments[0].click();     ARGUMENTS    ${rekomendasi_input_el}
    Sleep                               0.5s

Input Multiple Bidders
    [Arguments]    ${count}=3

    Wait Until Element Is Visible    ${tab_bidder}        timeout=10s
    Scroll Element Into View         ${tab_bidder}
    Click Element                    ${tab_bidder}
    Sleep                            1s

    Wait Until Element Is Visible    ${tambah_bidder}     timeout=10s
    Wait Until Element Is Enabled    ${tambah_bidder}     timeout=10s
    Click Element                    ${tambah_bidder}

    Wait Until Element Is Visible    ${cari_bidder}       timeout=10s
    Press Keys                       ${cari_bidder}       CTRL+a+BACKSPACE
    Press Keys                       ${cari_bidder}       ${bidder}
    Sleep                            1.5s                 # Jeda agar tabel ter-filter

    FOR    ${index}    IN RANGE    1    ${count} + 1
        ${cb_row_xpath}=    Set Variable    xpath=(//tbody//tr[${index}]//input[@type='checkbox'])
        Wait Until Page Contains Element    ${cb_row_xpath}    timeout=5s
        
        ${cb_el}=    Get Web Element    ${cb_row_xpath}
        Execute Javascript    arguments[0].click();    ARGUMENTS    ${cb_el}
        Sleep    0.2s
    END

    Wait Until Element Is Visible    ${tambahkan_bidder}    timeout=10s
    Click Element                    ${tambahkan_bidder}
    Sleep                            1.5s

    FOR    ${index}    IN RANGE    1    ${count} + 1
        # Target dropdown Lot Aktif per baris
        ${lot_dropdown_xpath}=    Set Variable    xpath=(//table//tbody/tr[${index}]//div[@role='group' and @type='button'])
        
        Wait Until Page Contains Element    ${lot_dropdown_xpath}    timeout=5s
        
        # 1. Buka dropdown menggunakan JS Click agar tidak terhalang popover lain
        ${lot_el}=                          Get Web Element           ${lot_dropdown_xpath}
        Execute Javascript                  arguments[0].click();     ARGUMENTS    ${lot_el}
        Sleep                               0.5s

        # 2. Klik Opsi '1' dari popover yang muncul
        Wait Until Element Is Visible       ${opsi_lot_aktif}         timeout=5s
        ${opsi_el}=                         Get Web Element           ${opsi_lot_aktif}
        Execute Javascript                  arguments[0].click();     ARGUMENTS    ${opsi_el}
        Sleep                               0.3s

        # 3. Tekan ESCAPE untuk menutup popover agar tidak menghalangi baris di bawahnya
        Press Keys                          NONE                      ESCAPE
        Sleep                               0.3s
    END

Delete Objek Lelang Row And Confirm
    Wait Until Page Contains Element    xpath=//table//tbody/tr            timeout=10s
    ${count_before}=                    Get Element Count                  xpath=//table//tbody/tr

    Wait Until Page Contains Element    ${btn_delete_objek_row1}           timeout=10s
    Scroll Element Into View            ${btn_delete_objek_row1}
    Sleep                               0.5s

    ${delete_el}=                       Get Web Element                    ${btn_delete_objek_row1}
    Execute Javascript                  arguments[0].click();              ARGUMENTS    ${delete_el}
    Sleep                               1s

    Wait Until Element Is Visible       ${btn_konfirmasi_hapus_objek}      timeout=5s
    Click Element                       ${btn_konfirmasi_hapus_objek}
    Sleep                               1s

    ${expected_count}=                  Evaluate                           ${count_before} - 1
    Wait Until Keyword Succeeds         5s    1s    Page Should Contain Element    xpath=//table//tbody/tr    count=${expected_count}

Go To Edit Objek Lelang
    [Arguments]    ${id}=${lelang_id}
    
    # 1. Search Lelang ID
    Wait Until Element Is Visible    ${input_search_list_lelang}    timeout=30s
    Press Keys                       ${input_search_list_lelang}    CTRL+a+BACKSPACE
    Input Text                       ${input_search_list_lelang}    ${id}
    Sleep                            1.5s
    
    # 2. Klik Arrow Down (Dropdown Aksi Baris Pertama)
    Wait Until Element Is Visible    ${btn_action_dropdown_row1}    timeout=10s
    Click Element                    ${btn_action_dropdown_row1}
    Sleep                            0.5s
    
    # 3. Klik Menu Edit
    Wait Until Element Is Visible    ${btn_menu_edit}               timeout=5s
    Click Element                    ${btn_menu_edit}
    Sleep                            1.5s
    
    # 4. Pindah ke Tab Objek Lelang
    Wait Until Element Is Visible    ${tab_objek_lelang}            timeout=10s
    Click Element                    ${tab_objek_lelang}
    Sleep                            1s

Delete Objek Bidder Row And Confirm
    Wait Until Page Contains Element    xpath=//table//tbody/tr            timeout=10s
    ${count_before}=                    Get Element Count                  xpath=//table//tbody/tr

    Wait Until Page Contains Element    ${btn_delete_bidder}           timeout=10s
    Scroll Element Into View            ${btn_delete_bidder}
    Sleep                               0.5s

    ${delete_el}=                       Get Web Element                    ${btn_delete_bidder}
    Execute Javascript                  arguments[0].click();              ARGUMENTS    ${delete_el}
    Sleep                               1s

    Wait Until Element Is Visible       ${btn_konfirmasi_hapus_bidder}      timeout=5s
    Click Element                       ${btn_konfirmasi_hapus_bidder}
    Sleep                               1s

    ${expected_count}=                  Evaluate                           ${count_before} - 1
    Wait Until Keyword Succeeds         5s    1s    Page Should Contain Element    xpath=//table//tbody/tr    count=${expected_count}

Go To Edit Objek Bidder
    [Arguments]    ${id}=${lelang_id}
    
    # 1. Search Lelang ID
    Wait Until Element Is Visible    ${input_search_list_lelang}    timeout=30s
    Press Keys                       ${input_search_list_lelang}    CTRL+a+BACKSPACE
    Input Text                       ${input_search_list_lelang}    ${id}
    Sleep                            1.5s
    
    # 2. Klik Arrow Down (Dropdown Aksi Baris Pertama)
    Wait Until Element Is Visible    ${btn_action_dropdown_row1}    timeout=10s
    Click Element                    ${btn_action_dropdown_row1}
    Sleep                            0.5s
    
    # 3. Klik Menu Edit
    Wait Until Element Is Visible    ${btn_menu_edit}               timeout=5s
    Click Element                    ${btn_menu_edit}
    Sleep                            1.5s
    
    # 4. Pindah ke Tab Objek Lelang
    Wait Until Element Is Visible    ${tab_bidder}            timeout=10s
    Click Element                    ${tab_bidder}
    Sleep                            1s