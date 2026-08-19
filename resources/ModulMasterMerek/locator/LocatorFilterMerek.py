#button Filter
btn_filter = "xpath=//button[@data-slot='popover-trigger' and contains(., 'Filter')]"
input_search_tabel = "xpath=//input[@placeholder='Search...']"
search_merek="Test Auto"

#Filter Merk
input_search_status = "xpath=//div[@role='dialog']//input[@placeholder='Cari..']"
dd_objek_lelang_trigger = "xpath=//input[@value='Pilih Objek Lelang']/parent::div"
input_search_objek_lelang = "xpath=(//div[@role='dialog'])[last()]//input[@placeholder='Cari..']"
opt_status_aktif = "xpath=//div[@role='dialog']//button[.//span[text()='Aktif']]"
opt_objek_lelang_bike = "xpath=//div[@role='dialog']//button[.//span[text()='Bike']]"
input_filter_merek = "xpath=//input[@placeholder='Ketik Merek']"
btn_tampilkan_filter = "xpath=//button[@data-slot='popover-close' and .//span[text()='Tampilkan']]"
btn_hapus_filter = "xpath=//button[@data-slot='popover-close' and .//span[text()='Hapus']]"
status_option="Aktif"
objek_lelang="Bike"
value_merk="BAJAJ"
input_filter_merek = "xpath=//input[@placeholder='Ketik Merek']"
value_invalid="UNKNOWN_BRAND"

#Switch
btn_toggle_status = "xpath=//button[@role='switch']"
btn_toggle_status_on = "xpath=//button[@role='switch' and @data-state='checked']"
btn_toggle_status_off = "xpath=//button[@role='switch' and @data-state='unchecked']"
btn_ya_konfirmasi = "xpath=//button[contains(., 'Ya, Konfirmasi')]"
toast_success_update_status_merek = "xpath=//li[@data-type='success']//div[text()='Berhasil update status merek']"