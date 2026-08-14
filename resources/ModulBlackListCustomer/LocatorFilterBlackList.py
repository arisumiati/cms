#Filter Blacklist
btn_filter = "xpath=//button[@data-slot='popover-trigger' and contains(., 'Filter')]"
input_search_status = "xpath=//input[@placeholder='Cari..']"
option_status_aktif = "xpath=//button[div/span[text()='Non Aktif']]"
option_status_invalid ="xpath=//span[text()='Aktif']"
dropdown_nama_bank = "xpath=//button[@role='combobox' and @aria-label='Nama Bank']"
option_bank_mandiri = "xpath=//*[@role='option' and contains(., 'Mandiri')] | //div[@data-radix-collection-item and contains(., 'Mandiri')]"
option_bank_Invalid = "xpath=//*[@role='option' and contains(., 'Lainnya')] | //div[@data-radix-collection-item and contains(., 'Lainnya')]"
btn_tampilkan_filter = "xpath=//button[@data-slot='popover-close' and contains(., 'Tampilkan')]"
btn_hapus="xpath=//button[@data-slot='popover-close' and contains(., 'Hapus')]"
input_nama_bank = "xpath=//input[@placeholder='Ketik Nama Bank']"
input_bank="Bank Syariah Indonesia"

#Search Blacklist
input_search = "xpath=//input[@placeholder='Search...']"
search="onlytestreg1@yopmail.com"