import time
import random
import string
import os

#Filter Objek Lelang
btn_filter="xpath=//button[normalize-space()='Filter' or contains(., 'filter_alt')]"
dropdown_objek_lelang="xpath=//input[@value='Pilih Objek Lelang']/parent::div | //div[contains(@aria-controls, 'radix') and .//input[@value='Pilih Objek Lelang']]"
option_electronic="xpath=//div[@role='dialog']//button[.//span[text()='Electronic']]"
btn_tampilkan="xpath=//button[@data-slot='popover-close' and .//span[text()='Tampilkan']]"

#tambah Unit objek lelang
btn_tambah_objek_lelang="xpath=//button[@data-slot='button' and contains(., 'Tambah')]"
dropdown_pilih_cabang="xpath=//input[@value='Pilih Cabang']/parent::div | //div[contains(@aria-controls, 'radix') and .//input[@value='Pilih Cabang']]"
option_cabang="xpath=//div[@role='dialog']//button[.//span[text()='Balikpapan']]"
dropdown_seller="xpath=//input[@value='Pilih No Seller']"
search_seller="xpath=//input[@placeholder='Cari No Seller' or contains(@placeholder, 'Cari')]"
input_search_seller="xpath=//input[contains(@placeholder, 'Cari')]"
option_seller_template = "xpath=//button[.//input[@type='radio']][.//*[contains(text(), '{seller_id}')]]"
option_mou_template = "xpath=//button[.//span[contains(text(), '{mou_id}')]]"
dropdown_mou = "xpath=//input[@value='Pilih MOU']/parent::div | //div[contains(@class, 'cursor-pointer')][.//input[@value='Pilih MOU']]"
dropdown_addendum = "xpath=//input[@value='Pilih Addendum']/parent::div | //div[contains(@class, 'cursor-pointer')][.//input[@value='Pilih Addendum']]"
option_addendum_template = "xpath=//button[.//span[contains(text(), '{addendum_id}')]]"
input_harga_dasar = "xpath=//input[@placeholder='Rp']"
input_kategori_unit = "xpath=//input[@name='unitCategory' or @placeholder='Ketik Kategori Unit']"
input_display_tipe = "xpath=//input[@name='displayType' or @placeholder='Ketik Display Tipe']"
dropdown_merek = "xpath=//input[@value='Pilih Merek']/parent::div | //div[contains(@class, 'cursor-pointer')][.//input[@value='Pilih Merek']]"
option_merek_template = "xpath=//button[.//span[contains(text(), '{merek_name}')]]"
dropdown_model = "xpath=//input[@value='Pilih Model']/parent::div | //div[contains(@class, 'cursor-pointer')][.//input[@value='Pilih Model']]"
option_model_template = "xpath=//button[.//span[contains(text(), '{model_name}')]]"
input_tahun_unit = "xpath=//input[@name='year' or @placeholder='Ketik Tahun Unit']"
input_ram = "xpath=//input[@name='memoryRam' or @placeholder='Ketik RAM']"
dropdown_warna = "xpath=//label[contains(text(),'Warna')]/following-sibling::div | //input[@placeholder='Pilih Warna' or @value='BIRU' or @value='Pilih Warna']/parent::div"
option_warna_template = "xpath=//div[@role='dialog']//button[.//span[contains(text(), '{warna_name}')]]"
random_str = ''.join(random.choices(string.ascii_uppercase + string.digits, k=4))
serial_number_val = f"SN-{time.strftime('%Y%m%d')}-{random_str}"
input_serial_number = "xpath=//input[@name='plateNumber' or @placeholder='Ketik Serial Number']"
input_no_penyimpanan = "xpath=//input[@name='carFrameNumber']"
dropdown_grade = "xpath=//input[@value='Pilih Grade']/ancestor::div[@type='button']"
option_grade = "xpath=//div[@role='dialog']//button[.//span[text()='{value}']]"
input_catatan = "xpath=//textarea[@name='notes']"
btn_selanjutnya = "xpath=//button[contains(text(), 'Selanjutnya')]"

#Edit Objek Lelang
No_Stok_Edit="00004927"
input_search_stok = "xpath=//input[@placeholder='Search...']"
btn_action_dropdown = "xpath=//table//tbody//tr[1]//button[contains(@aria-label, 'view')]/following-sibling::button"
btn_edit_menuitem = "xpath=//div[@role='menuitem' and contains(., 'edit')]"
Edit_Ram_val="16GB"
Edit_Warna="MERAH MARUN"
Edit_catetan="Hai Edit"
input_dropdown_warna = "xpath=//input[@value='BIRU' or contains(@value, 'BIRU')]/parent::div"
option_warna_merah_marun = "xpath=//div[@role='dialog']//button[.//span[text()='MERAH MARUN']]"
Option_Edit="AVAILABLE"
Edit_Tanggal_Garansi="12082026"

#error Message
error_msg_wajib_diisi = "xpath=//p[contains(@class, 'text-danger') and text()='Wajib diisi']"
error_msg_file_size = "xpath=//p[contains(@class, 'text-red') and contains(text(), 'Maximal file upload 2MB') or contains(text(), 'Max file size 2MB')]"
error_msg_invalid_file_type = "xpath=//p[contains(@class, 'text-red') and text()='Tipe file tidak valid.']"

#tambah Dokumen objek lelang
radio_option_template = "xpath=//p[text()='{field_name}']/following-sibling::div//button[@value='{option_value}']"
input_tanggal_garansi = "xpath=//input[@name='keurExpired' or @type='date']"
input_foto_1 = "xpath=(//input[@type='file'])[1]"
input_foto_2 = "xpath=(//input[@type='file'])[2]"
input_foto_index = "xpath=(//input[@type='file'])[{index}]"

#input Dokumen Objek Lelang
Option = "AVAILABLE"
Tanggal_Garansi="10122026"
PATH_FOTO_1 = os.path.abspath(r"c:\Users\msi80\Downloads\sample1.jpg")
PATH_FOTO_2 = os.path.abspath(r"c:\Users\msi80\Downloads\Sample2.jpg")
PATH_SAMPLE_FOTO = os.path.abspath(r"C:\Users\msi80\Downloads\Sample2.jpg")
PATH_FOTO_3MB = os.path.abspath(r"c:\Users\msi80\Downloads\test_3mb.jpg")
PATH_FILE_XLSX = os.path.abspath(r"c:\Users\msi80\Downloads\Kegiatan_Magang.xlsx")
btn_simpan = "xpath=//button[contains(text(), 'Simpan')]"

#Button popUpKonfirmasi
btn_ya_konfirmasi = "xpath=//button[contains(text(), 'Ya, Konfirmasi')]"

#verifikasi Notifikasi
toast_success_title = "xpath=//li[@data-type='success']//div[@data-title and contains(text(), 'Berhasil menambah objek lelang!')]"
Success_msg = "Berhasil menambah objek lelang!"
toast_success_edit = "xpath=//li[@data-sonner-toast and .//div[@data-title and contains(text(), 'Berhasil update objek lelang!')]]"

#input unit Objek Lelang
seller_Id= "00001040"
Select_mou="00000093"
Select_addendum ="1122"
harga_dasar = "250000"
kategori_unit = "Electronic"
display_tipe = "Testing Electronic Objek Lelang"
display_tipe_Dell_Latitude_5420= "Dell Latitude 5420 i7 Gen 11"
Select_merek = "Dell"
Select_model = "Inspiron Ultra"
tahun_unit = "2025"
input_ram_val = "16GB"
Select_warna = "BIRU"
No_Penyimpanan = "STORE-12345"
Grade = "A"
Catetan="Hallo"