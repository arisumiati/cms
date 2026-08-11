import os

#Add Seller
btn_add_seller = "xpath=//button[contains(., 'Seller') and .//span[text()='add']]"
value_no_seller="00003178"
ddl_seller_trigger = "xpath=//button[@aria-haspopup='dialog'] | //div[@aria-haspopup='dialog']"
input_seller_search = "xpath=//input[@value='Choose No Seller' or @placeholder='Choose No Seller']"
opt_seller_item = f"xpath=//div[@role='dialog' or contains(@id, 'radix')]//button[.//p[normalize-space()='{value_no_seller}']]"
value_jenis_seller="test 4"
ddl_jenis_seller_trigger = "xpath=//div[@aria-haspopup='dialog' and .//input[@value='Choose Jenis Seller']]"
input_jenis_seller_search = "xpath=//div[@role='dialog' or contains(@id, 'radix')]//input | //input[@placeholder='Cari..']"
opt_jenis_seller_item = f"xpath=//div[@role='dialog']//button[.//span[normalize-space()='{value_jenis_seller}']]"
input_mou_mulai = "xpath=(//input[@placeholder='dd/mm/yyyy'])[1]"
input_mou_berakhir = "xpath=(//input[@placeholder='dd/mm/yyyy'])[2]"
input_file_attachment = "xpath=//input[@type='file']"
PATH_FOTO_1 = os.path.abspath(r"c:\Users\msi80\Downloads\sa1.jpeg")
PATH_INVALID = os.path.abspath(r"c:\Users\msi80\Downloads\Kegiatan_Magang.xlsx")
PATH_FILE_OVER_SIZE = os.path.abspath(r"c:\Users\msi80\Downloads\sample_3mb.png")
btn_simpan = "xpath=//button[contains(., 'Simpan') and @aria-haspopup='dialog']"
btn_yes_popup = "xpath=//button[normalize-space()='Yes']"
msg_error_wajib_diisi = "xpath=//p[contains(@class, 'text-danger') and normalize-space()='Wajib diisi']"
msg_error_invalid_file = "xpath=//p[contains(@class, 'text-red-500') and (normalize-space()='Tipe file tidak valid.' or contains(text(), 'Tipe file tidak valid'))]"
msg_error_max_file_size = "xpath=//p[contains(@class, 'text-red') and (normalize-space()='Maximal file upload 2MB' or contains(text(), 'Maximal file upload 2MB'))]"