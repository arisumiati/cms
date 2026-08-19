#Tambah model
btn_tambah = "xpath=//button[@data-slot='modal-trigger' and contains(., 'Tambah')]"



#input Model
dd_objek_lelang_form_trigger = "xpath=//input[@value='Pilih Objek Lelang']"
input_search_popover = "xpath=(//div[@role='dialog'])[last()]//input[@placeholder='Cari..']"
opt_objek_lelang_car = "xpath=(//div[@role='dialog'])[last()]//button[.//span[text()='Car']]"
objek_lelang="Car"
dd_merek_form_trigger = "xpath=//input[@value='Pilih Merek']"
input_search_popover = "xpath=(//div[@role='dialog'])[last()]//input[@placeholder='Cari..']"
opt_merek_test_auto = "xpath=(//div[@role='dialog'])[last()]//button[.//span[text()='Test Auto']]"
value_merk="Test Auto"
input_nama_model = "xpath=//input[@placeholder='Ketik Nama Model']"
nama_model="Model Auto"
btn_simpan_model = "xpath=//button[contains(., 'Simpan')]"
btn_ya_konfirmasi = "xpath=//button[contains(., 'Ya, Konfirmasi')]"
toast_success_create_model = "xpath=//li[@data-type='success']//div[text()='Berhasil create data model']"
txt_error_wajib_diisi = "xpath=//p[contains(@class, 'text-danger') and text()='Wajib diisi']"
toast_error_model_already_exists = "xpath=//li[@data-type='error']//div[text()='Nama model sudah digunakan untuk merek ini']"

#Edit Model
input_search_model = "xpath=//input[@placeholder='Search...']"
search_model="XPANDER CROSS"
input_nama_model = "xpath=//input[@placeholder='Ketik Nama Model']"
btn_edit_model = "xpath=(//button[@aria-label='edit'])[1]"
edit_model="PAJERO SPORT"
toast_success_update_model = "xpath=//li[@data-type='success']//div[text()='Berhasil update data model']"
toast_error_model_already_exists = "xpath=//li[@data-type='error']//div[text()='Nama model sudah digunakan untuk merek ini']"