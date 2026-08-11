* Settings *
Library    SeleniumLibrary
Library    String
Library    BuiltIn
Library    DateTime
Library    OperatingSystem
Library    XML
Variables  ../../resources/ModulSeller/LocatorModulAddSeller.py

*** Keywords ***
Click Tombol Add Seller
    Wait Until Element Is Visible    ${btn_add_seller}      timeout=30s
    Click Element                    ${btn_add_seller}

Select Seller
    Wait Until Element Is Visible    ${ddl_seller_trigger}     timeout=10s
    Click Element                    ${ddl_seller_trigger}

    Wait Until Element Is Visible    ${input_seller_search}    timeout=10s
    Clear Element Text               ${input_seller_search}
    Input Text                       ${input_seller_search}    ${value_no_seller}

    Wait Until Element Is Visible    ${opt_seller_item}        timeout=20s
    Scroll Element Into View         ${opt_seller_item}
    Click Element                    ${opt_seller_item}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${ddl_jenis_seller_trigger}     timeout=10s
    Click Element                    ${ddl_jenis_seller_trigger}

    Wait Until Element Is Visible    ${input_jenis_seller_search}    timeout=10s
    Input Text                       ${input_jenis_seller_search}    ${value_jenis_seller}

    Wait Until Element Is Visible    ${opt_jenis_seller_item}        timeout=10s
    Scroll Element Into View         ${opt_jenis_seller_item}
    Click Element                    ${opt_jenis_seller_item}
    Sleep                            0.5s

    ${today}=    Get Current Date    result_format=%d/%m/%Y

    ${future_date}=    Add Time To Date    ${today}    2 days    date_format=%d/%m/%Y    result_format=%d/%m/%Y

    Wait Until Element Is Visible    ${input_mou_mulai}       timeout=10s
    Clear Element Text               ${input_mou_mulai}
    Input Text                       ${input_mou_mulai}       ${today}
    Sleep                            0.5s

    Wait Until Element Is Visible    ${input_mou_berakhir}    timeout=10s
    Clear Element Text               ${input_mou_berakhir}
    Input Text                       ${input_mou_berakhir}    ${future_date}
    Sleep                            0.5s

    Wait Until Page Contains Element    ${btn_upload_attachment}    timeout=30s
    Scroll Element Into View            ${btn_upload_attachment}
    Execute JavaScript                  window.scrollBy(0, 200)
    Choose File                         ${btn_upload_attachment}    ${PATH_FOTO_1}
    Sleep                               1s

Validate Submit Empty Mandatory Fields
    Wait Until Element Is Visible    ${msg_error_wajib_diisi}   timeout=10s
    Page Should Contain Element      ${msg_error_wajib_diisi}

Validate Invalid Attachment File Format
    Wait Until Page Contains Element    ${input_file_attachment}    timeout=10s

    Choose File                         ${input_file_attachment}    ${PATH_INVALID}
    Sleep                               2s

    Wait Until Element Is Visible       ${msg_error_invalid_file}      timeout=10s
    Page Should Contain Element         ${msg_error_invalid_file}
    Sleep                               0.5

Validate File Size Exceeds Limit
    Wait Until Page Contains Element    ${input_file_attachment}       timeout=30s

    Choose File                         ${input_file_attachment}       ${PATH_FILE_OVER_SIZE}

    Wait Until Element Is Visible       ${msg_error_max_file_size}     timeout=10s
    Page Should Contain Element         ${msg_error_max_file_size}

Click Confirm Seller
    Wait Until Element Is Visible    ${btn_simpan}       timeout=30s
    Scroll Element Into View         ${btn_simpan}
    Click Element                    ${btn_simpan}

    Wait Until Element Is Visible    ${btn_yes_popup}    timeout=30s
    Click Element                    ${btn_yes_popup}