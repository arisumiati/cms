import os

#add customer
tambah_customer = "xpath=//button[@data-slot='button' and contains(normalize-space(), 'Tambah')]"

#selanjutnya
klik_selanjutnya="xpath=//button[normalize-space(text())='Selanjutnya']"

#informasi customer
pilih_tipe_customer="xpath=//button[@aria-label='Tipe Customer' or .//span[text()='Pilih Tipe Customer']]"
pilih_membership="xpath=//button[@aria-label='Membership' or .//span[text()='Pilih Membership']]"
input_nama_depan="xpath=//input[@name='firstName']"
input_nama_belakang="xpath=//input[@name='lastName']"
input_no_ponsel="xpath=//input[@name='phone']"
input_email="xpath=//input[@name='email']"

#informasi detail customer
input_tempat_lahir="xpath=//input[@name='birthPlace']"
input_tanggal_lahir="xpath=//input[@placeholder='Pilih Tanggal Lahir']"
pilih_jenis_kelamin="xpath=//button[@aria-label='Jenis Kelamin']"
pilih_status_pekerjaan="xpath=//button[@aria-label='Status Pekerjaan']"
pilih_kewarganegaraan="xpath=//button[@aria-label='Kewarganegaraan']"
input_kode_pos="xpath=//input[@name='postCode']"
input_alamat="xpath=//input[@name='address']"
chekclis_alamat="//input[@id='regular']"
input_kota_domisili="xpath=//input[@name='residenceCity']"
input_alamat_domisili="xpath=//input[@name='residenceAddress']"
upload_ktp="xpath=(//input[@type='file'])[1]"
upload_npwp="xpath=(//input[@type='file'])[2]"
input_no_ktp="xpath=(//input[@inputmode='numeric'])[1]"
input_no_npwp="xpath=(//input[@inputmode='numeric'])[2]"
txt_error_max_file_size = "xpath=//p[contains(@class, 'text-red-500') and text()='Maximal file upload 2MB']"
txt_error_invalid_format = "xpath=//p[contains(@class, 'text-red-500') and text()='Tipe file tidak valid.']"
txt_error_wajib_diisi = "xpath=//p[contains(@class, 'text-danger') and text()='Wajib diisi']"
txt_error_format_ktp = "xpath=//p[contains(@class, 'text-danger') and text()='Format KTP tidak valid']"
txt_error_format_npwp = "xpath=//p[contains(@class, 'text-danger') and text()='Format NPWP tidak valid']"
input_nama_npwp="xpath=//input[@name='npwpName']"
input_pic_name = "xpath=//input[@name='picName']"
input_pic_phone = "xpath=//input[@name='picPhone']"
input_pic_email = "xpath=//input[@name='picEmail']"

#value
value_tipe_customer_perorangan="xpath=//div[@role='option' or @data-radix-collection-item='']//span[text()='Perorangan'] | //span[text()='Perorangan']"
value_tipe_customer_corporate="xpath=//div[@role='option' or @data-radix-collection-item='']//span[text()='Corporate'] | //span[text()='Corporate']"
value_membership="xpath=//div[@role='option' or @data-radix-collection-item='']//span[text()='REGULAR'] | //span[text()='REGULAR']"
value_not_verified="//input[@type='radio' and @name='registrationStep' and @value='EMAIL_VERIFIED']"
value_jenis_kelamin="xpath=//span[text()='Pria']"
value_status_pekerjaan="xpath=//span[text()='Pegawai Swasta']"
value_kewarganegaraan="xpath=//span[text()='Warga Negara Indonesia']"
kode_pos = "1122"
val_alamat = "Jln.Grogol"
val_kota_domisili = "Jakarta Barat"
val_alamat_domisili = "Jln. Jakarta barat"
path_file_ktp=os.path.abspath(r"c:\Users\msi80\Downloads\sa1.jpeg")
path_file_npwp=os.path.abspath(r"c:\Users\msi80\Downloads\sa1.jpeg")
path_file_3mb=os.path.abspath(r"c:\Users\msi80\Downloads\sample_3mb.png")
path_file_invalid_format = os.path.abspath(r"c:\Users\msi80\Downloads\Kegiatan_Magang.xlsx")    

#data bank
pilih_nama_bank="xpath=//button[@aria-label='Nama Bank']"
input_cabang_bank="xpath=//input[@name='bankBranchName']"
input_nama_pemilik_rekening="xpath=//input[@name='bankAccountName']"
input_nomor_rekening="xpath=//input[@name='bankAccountNumber']"
upload_buku_tabungan="xpath=(//input[@type='file'])[1]"
input_catatan="xpath=//textarea[@name='notes']"

#value data bank
value_bank="xpath=//span[text()='BCA']"
value_cabang_bank="bank bca"
path_file_buku_tabungan=os.path.abspath(r"c:\Users\msi80\Downloads\sa1.jpeg")  

#data other
value_showroom_ada="xpath=//button[@role='radio' and @value='true']"
input_nama_showroom_locator="xpath=//input[@name='showroomName']"
input_alamat_showroom_locator="xpath=//input[@name='showroomAddress']"
pilih_tujuan_beli="xpath=//button[@aria-label='Tujuan Beli']"
pilih_sumber_dana="xpath=//button[@aria-label='Sumber Dana']"
pilih_transaksi_untuk="xpath=//input[@name='transactionPurpose']"
pilih_jenis_lelang="xpath=//button[@aria-label='Jenis Lelang']"
input_other1="xpath=//input[@name='others1']"
input_other2="xpath=//input[@name='others2']"
input_other3="xpath=//input[@name='others3']"
input_other4="xpath=//input[@name='others4']"
input_other5="xpath=//input[@name='others5']"
input_kode_referral="//input[@placeholder='Ketik Kode Referral']"
send_password="(//span[normalize-space()='OFF']/preceding-sibling::input[@type='checkbox'])[2]"
klik_simpan="//button[normalize-space()='Simpan']"

#value data other
input_nama_showroom="Garage Car"
input_alamat_showroom="Jakarta Barat"
value_tujuan_beli="xpath=//span[text()='Digunakan Sendiri']"
value_sumber_dana="xpath=//span[text()='Wiraswasta']"
value_transaksi_untuk="jual / beli"
value_jenis_lelang="xpath=//span[text()='Passenger']"
value_other="test 1"
value_kode_referal="test 2"

#button simpan
btn_simpan_utama ="xpath=//button[text()='Simpan']"
btn_simpan_popup ="xpath=//button[normalize-space(text())='Ya, Konfirmasi']"
toast_success_add_customer ="xpath=//li[@data-sonner-toast='true']"