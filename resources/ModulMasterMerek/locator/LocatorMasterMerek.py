import os

#add Merek
btn_tambah = "xpath=//button[@data-slot='modal-trigger' and contains(., 'Tambah')]"

#input Merek
dropdown_objek_lelang = "xpath=//input[@value='Pilih Objek Lelang']"
input_search_objek_lelang = "xpath=//input[@placeholder='Cari..']"
option_objek_lelang_car = "xpath=//button[contains(., 'Car')]"
input_objek="Car"
input_nama_merek = "xpath=//input[@name='name']"
value_merk="Test Auto"
input_upload_file_merek ="xpath=//div[@role='dialog']//input[@type='file']"
IMAGE_PATH = os.path.abspath(r"c:\Users\msi80\Downloads\logo_toyota.png")
btn_simpan = "xpath=//button[text()='Simpan']"
btn_ya_konfirmasi = "xpath=//button[contains(., 'Ya, Konfirmasi')]"
toast_success_create_merek = "xpath=//li[@data-type='success']//div[text()='Berhasil create data merek']"
msg_error_wajib_diisi = "xpath=//p[contains(@class, 'text-danger') and text()='Wajib diisi']"
INVALID_FILE = os.path.abspath(r"c:\Users\msi80\Downloads\LatihanSoal_DB_Lab.pdf")
msg_error_invalid_file = "xpath=//p[contains(@class, 'text-red-500') and text()='Tipe file tidak valid.']"
LARGE_IMAGE_FILE = os.path.abspath(r"c:\Users\msi80\Downloads\sample_3mb.png")
msg_error_max_file_size = "xpath=//p[contains(@class, 'text-red-500') and text()='Maximal file upload 2MB']"
toast_error_duplicate_merek = "xpath=//li[@data-type='error']//div[text()='Nama merek sudah digunakan untuk objek lelang ini']"