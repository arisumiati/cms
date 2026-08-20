import os

#Add Tipe
btn_tambah_tipe= "xpath=//button[@data-slot='modal-trigger' and contains(., 'Tambah')]"

#Search & Edit Tipe
input_search_tipe = "xpath=//input[@placeholder='Search...']"
value_search="Test Auto"
btn_edit_tipe = "xpath=(//button[@aria-label='edit'])[1]"
input_nama_tipe = "xpath=//input[@placeholder='Ketik Nama Tipe']"
edit_tipe="2.0 AT Sport Edition"
btn_hapus_gambar = "xpath=//button[.//span[text()='delete']]"
UPDATE_PATH = os.path.abspath(r"c:\Users\msi80\Downloads\update.jpeg")
toast_success_update_tipe = "xpath=//li[@data-type='success']//div[text()='Berhasil update data tipe']"

#Input Tipe
dd_objek_lelang_tipe_trigger = "xpath=//input[@value='Pilih Objek Lelang']"
input_search_popover_form = "xpath=(//div[@role='dialog'])[last()]//input[@placeholder='Cari..']"
opt_objek_lelang_car_form = "xpath=(//div[@role='dialog'])[last()]//button[.//span[text()='Car']]"
Objek_lelang="Car"
dd_merek_tipe_trigger = "xpath=//input[@value='Pilih Merek']"
input_search_popover_form = "xpath=(//div[@role='dialog'])[last()]//input[@placeholder='Cari..']"
opt_merek_test_auto_form = "xpath=(//div[@role='dialog'])[last()]//button[.//span[text()='Test Auto']]"
opt_merek_Bmw = "xpath=(//div[@role='dialog'])[last()]//button[.//span[text()='BMW']]"
option_merk="BMW"
dd_model_tipe_trigger = "xpath=//input[@value='Pilih Model']"
input_search_popover_form = "xpath=(//div[@role='dialog'])[last()]//input[@placeholder='Cari..']"
opt_model_pajero_sport_form = "xpath=(//div[@role='dialog'])[last()]//button[.//span[text()='PAJERO SPORT']]"
opt_model_BMW= "xpath=(//div[@role='dialog'])[last()]//button[.//span[text()='120i']]"
opt_model="120i"
input_nama_tipe = "xpath=//input[@placeholder='Ketik Nama Tipe']"
option_tipe="2.0 AT"
input_file_upload = "xpath=//input[@type='file']"
IMAGE_PATH = os.path.abspath(r"c:\Users\msi80\Downloads\sample1.jpg")
btn_simpan_tipe = "xpath=//button[contains(., 'Simpan')]"
btn_ya_konfirmasi = "xpath=//button[text()='Ya, Konfirmasi']"
toast_success_create_tipe = "xpath=//li[@data-type='success']//div[text()='Berhasil create data tipe']"
lbl_error_wajib_diisi = "xpath=//p[contains(@class, 'text-danger') and text()='Wajib diisi']"
toast_error_duplicate_tipe = "xpath=//li[@data-type='error']//div[text()='Nama tipe sudah digunakan untuk model ini']"
lbl_error_tipe_file_invalid = "xpath=//p[contains(@class, 'text-red-500') and text()='Tipe file tidak valid.']"
INVALID_PATH = os.path.abspath(r"c:\Users\msi80\Downloads\Kegiatan_Magang.xlsx")