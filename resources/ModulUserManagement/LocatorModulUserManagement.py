#add user
tambah_user="xpath=//button[contains(., 'Tambah') and @data-slot='modal-trigger']"
input_nama_depan="xpath=//input[@name='firstname']"
input_nama_belakang="xpath=//input[@name='lastname']"
input_email ="xpath=//input[@name='email' or contains(@placeholder, 'Email')]"
input_no_NIK ="xpath=//input[@name='nik']"
input_no_HP ="xpath=//input[@name='phone' or @name='phone_number' or contains(@placeholder, 'HP') or contains(@placeholder, 'Telp')]"
pilih_role =  "xpath=//input[@value='Pilih Nama Role' or contains(@placeholder, 'Role')]/parent::div | //div[./input[@value='Pilih Nama Role']]"
dropdown_tipe_login = "xpath=//input[@value='Pilih Tipe Login' or contains(@placeholder, 'Tipe Login')]/parent::div | //div[./input[@value='Pilih Tipe Login']]"

#value input user
value_nama_depan ="Tester"
value_nama_belakang ="Otomatis"
value_email = "Tester22@yopmail.com"
value_no_NIK = "1234567890123111"
value_no_HP = "081234567865"
value_HP_prefix = "0217890123"
value_email_invalid="riri"
value_role = "xpath=//div[@role='dialog']//button[.//span[text()='ADMINCSUL']]"

#Edit user
search_user_table = "xpath=//input[@placeholder='Search...' and not(ancestor::div[@role='dialog'])]"
trigger_role_dropdown = "xpath=//div[@role='dialog']//input[@value='ADMINCSUL']/parent::div | //div[@role='dialog']//div[contains(., 'Nama Role')]/following-sibling::div//input"
trigger_tipe_login = "xpath=//div[@role='dialog']//div[label[contains(., 'Tipe Login')]]//div[contains(@class, 'cursor-pointer')] | //div[@role='dialog']//input[@value='Internal']/parent::div"
btn_batal_edit = "xpath=//button[@data-slot='modal-close' and normalize-space(.)='Batal'] | //div[@role='dialog']//button[normalize-space(.)='Batal']"
btn_simpan_edit = "xpath=//div[@role='dialog']//button[normalize-space(.)='Simpan']"
btn_confirm_edit = "xpath=//button[normalize-space(.)='Ya, Konfirmasi']"
btn_delete_item = "xpath=//button[.//span[text()='delete']]"
btn_confirm_delete = "xpath=//button[normalize-space(.)='Ya, Konfirmasi']"
value_search_NIK='212412312312'
btn_action_dropdown = "xpath=//tbody//tr[1]//button[@data-slot='dropdown-menu-trigger' or @aria-label='Tampilkan aksi lainnya']"
btn_menu_edit = "xpath=//div[@role='menuitem' and contains(normalize-space(.), 'edit')]"
value_edit_namaD="User"
value_edit_namaB="Automation"
value_edit_nomor="082121212124"
value_edit_nomor_prefix="0217890123"
value_edit_mail="UserAutomation11@gmail.com"
value_edit_role = "xpath=//button[contains(., 'CEO')] | //span[text()='CEO']"
value_edit_tipe_login = "xpath=//div[@data-radix-popper-content-wrapper]//button[contains(., 'Office 365 JBA')] | //span[text()='Office 365 JBA']"

#simpan
simpan_user ="xpath=//div[@role='dialog' and .//*[contains(text(), 'Tambah User')]]//button[text()='Simpan' or contains(., 'Simpan')]"
konfirmasi_ya="xpath=//button[contains(normalize-space(.), 'Ya, Konfirmasi') or contains(text(), 'Konfirmasi')]"

#add group
tambah_group="xpath=//div[@role='dialog']//button[.//span[text()='add_circle']]"
pilih_kategori="xpath=//div[contains(., 'Pilih Kategori') and (@aria-haspopup='dialog' or @type='button')]"
cari_group="xpath=//div[@role='dialog' and .//*[contains(text(), 'Tambah Customer Ke Group')]]//input[@placeholder='Search...']"
ceklis_group="xpath=//div[@role='dialog' and .//*[contains(text(), 'Tambah Customer Ke Group')]]//thead//th//input[@type='checkbox']"
simpan_group="xpath=//div[@role='dialog' and .//*[contains(text(), 'Tambah Customer Ke Group')]]//button[text()='Simpan' or contains(., 'Simpan')]"
no_seller="00000259"
value_kategori="Car"

#notifikasi Tambah Group
toast_create_user_success = "xpath=//li[@data-sonner-toast and contains(., 'Berhasil create data user')]"
error_no_hp_prefix = "xpath=//p[contains(@class, 'text-danger') and contains(., 'Awali dengan') and contains(., '08')]"
error_email_invalid = "xpath=//p[contains(@class, 'text-danger') and contains(., 'Email tidak valid')]" 
toast_success_edit_user = "xpath=//li[@data-sonner-toast and @data-type='success']//div[@data-title and contains(., 'Berhasil update data user')]"
err_msg_prefix_hp = "xpath=//p[contains(@class, 'text-danger') and contains(text(), 'Awali dengan \"08\" atau \"628\"')]"

#value input group
value_pilih_kategori = "//div[@role='option'][normalize-space()='Bike']"
value_cari_group = "DEALER-MYSTOCK-3"

excel_path_user=r"c:\Users\msi80\Downloads\AKUN USER.xlsx"
sheet_akun_user="AKUN USER"

#Edit Excel
search_email = "xpath=//input[@placeholder='Search...']"
switch_status_user = "xpath=//button[@role='switch']"
btn_konfirmasi_status = "xpath=//button[contains(text(), 'Ya, Konfirmasi')]"
toast_success_status = "xpath=//div[@data-title='' and contains(text(), 'Berhasil update status user')]"