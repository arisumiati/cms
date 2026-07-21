*** Settings ***
Library  SeleniumLibrary
Library    DateTime
Library  String
Variables  ../locator/LocatorModulLelang.py

*** Keywords ***
Click Tambah Lelang
    Wait Until Element Is Visible  ${button_create}
    Click Element  ${button_create}

Click Simpan Lelang Tab Ringkasan
    Scroll Element Into View  ${simpan_tab_ringkasan}
    Click Element  ${simpan_tab_ringkasan}

Click Simpan Lelang Tab Objek Lelang
    Scroll Element Into View  ${simpan_tab_objek_lelang}
    Click Element  ${simpan_tab_objek_lelang}

Click Simpan Lelang Tab Bidder
    Scroll Element Into View  ${simpan_tab_bidder_lelang}
    Click Element  ${simpan_tab_bidder_lelang}
    
Click Pop Up Konfirmasi
    Click Element    ${pop_up_konfirmasi}

Click Pop Up Ya Mengerti
    Click Element    xpath=//button[normalize-space(.)='Ya, Mengerti']

Input List Lelang Ringkasan
    ${tommorow}=    Get Current Date    result_format=%Y-%m-%d    increment=+1 day
    Wait Until Element Is Visible  ${input_nama_lelang}
    Sleep    3s
    Input Text  ${input_nama_lelang}  ${nama_lelang}
    Sleep    3s
    Click Element  ${input_objek_lelang}
    Click Element    ${switch_objek_lelang}

    Click Element  ${input_jenis_lelang}
    Click Element   ${switch_jenis_lelang}

    Click Element  ${input_cabang}
    Click Element  ${cabang}

    Sleep    3s
    
    ${besok}=    Get Current Date    result_format=%Y-%m-%d    increment=+1 day
    
    Click Element     ${input_tanggal_mulai}
    Sleep             0.5s
    Press Keys        NONE    ${besok}


    Input Text  ${input_waktu_mulai}  ${waktu_mulai_lelang}

    Click Element     ${input_tanggal_selesai}
    Sleep             0.5s
    Press Keys        NONE    ${besok}
   
    Input Text    ${input_waktu_selesai}    ${waktu_selesai_lelang}

    Input Text  ${input_kelipatan}  ${kelipatan_harga_bid}

    Input Text  ${input_waktu_wanpes}  ${waktu_wanpres}
    
Input Objek Lelang
    Click Element  ${tab_objek_lelang}
    Click Element  ${tambah_objek_lelang}
    Sleep    5s
    Select Checkbox  ${pilih_objek_lelang}
    Scroll Element Into View  ${tambahkan_objek_lelang} 
    Click Element  ${tambahkan_objek_lelang}   
    ${total}=    Get Element Count    xpath=//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input

    FOR    ${i}    IN RANGE    1    ${total + 1}
    ${lot_xpath}=    Set Variable    (//th[normalize-space()='NO LOT']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='NO LOT']/preceding-sibling::th)+1]//input)[${i}]
    Wait Until Element Is Visible    xpath=${lot_xpath}    10s
    Scroll Element Into View         xpath=${lot_xpath}
    Click Element                    xpath=${lot_xpath}
    Press Keys                       xpath=${lot_xpath}    CONTROL+a
    Press Keys                       xpath=${lot_xpath}    BACKSPACE
    Press Keys                       xpath=${lot_xpath}    ${i}
    Press Keys                       xpath=${lot_xpath}    ENTER
    Sleep                            0.3s
    END

Input Bidder
    Click Element  ${tab_bidder}
    Click Element  ${tambah_bidder}

    #cari bidder
    Input Text    ${cari_bidder}  ${bidder}
    Sleep    3s
    Click Element  ${pilih_bidder}
    Scroll Element Into View  ${tambahkan_bidder}
    Click Element  ${tambahkan_bidder}

Input Group
    Click Element  ${tab_bidder}
    Scroll Element Into View    ${tambah_group}
    Click Element  ${tambah_group}
    Click Element  ${pilih_kode_group}
    Click Element  ${click_kode_group}
    Scroll Element Into View  ${tambahkan_group}
    Click Element  ${tambahkan_group}

Input Admin Fee Per Objek Lelang
    Sleep    3s
    Scroll Element Into View    ${tambah_objek_lelang}

    ${total}=    Get Element Count    xpath=//th[normalize-space()='ADMIN FEE']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='ADMIN FEE']/preceding-sibling::th)+1]//input


    FOR    ${i}    IN RANGE    1    ${total + 1}

        ${admin_xpath}=    Set Variable    //th[normalize-space()='ADMIN FEE']/ancestor::table//tbody/tr/td[position()=count(//th[normalize-space()='ADMIN FEE']/preceding-sibling::th)+1]//input[${i}]
             
        Wait Until Element Is Visible    xpath=${admin_xpath}    10s
        Wait Until Element Is Enabled    xpath=${admin_xpath}    10s
        Scroll Element Into View         xpath=${admin_xpath}

        Clear Element Text               xpath=${admin_xpath}
        Input Text                       xpath=${admin_xpath}    500000

        Sleep    0.3s
    END


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
    

