import os
#Search Master Lelang
input_search_balai_lelang = "xpath=//input[@placeholder='Search...']"
btn_dropdown_action = "xpath=(//*[text()='keyboard_arrow_down'])[1]"
menu_edit = "xpath=//div[@role='menuitem' and contains(., 'edit')]"
PATH_EXCEL_BALAI_LELANG = os.path.abspath(r"c:\Users\msi80\Downloads\balai lelang.xlsx")
ddl_seller_trigger = "xpath=//div[@role='dialog']//div[@aria-haspopup='listbox']"
input_search_seller = "xpath=//input[@placeholder='Cari..']"
ddl_seller_trigger = "xpath=//div[@role='dialog']//div[@aria-haspopup='listbox']"
input_search_seller = "xpath=//input[@placeholder='Cari..']"
btn_simpan_edit = "xpath=//button[normalize-space()='Simpan']"
btn_ya_konfirmasi = "xpath=//button[normalize-space()='Ya, Konfirmasi']"
toast_success_update = "xpath=//li[@data-type='success']//div[@data-title and contains(., 'Berhasil update data balai lelang')]"