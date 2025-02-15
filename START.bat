@echo off
REM private_keys.txt faylini tekshirish
if not exist "private_keys.txt" (
    echo private_keys.txt fayli topilmadi, yangi fayl yaratilmoqda...
    echo. > private_keys.txt
    echo private_keys.txt fayli yaratildi.
) else (
    echo private_keys.txt fayli mavjud.
)

REM proxy.txt faylini tekshirish
if not exist "proxy.txt" (
    echo proxy.txt fayli topilmadi, yangi fayl yaratilmoqda...
    echo. > proxy.txt
    echo proxy.txt fayli yaratildi.
) else (
    echo proxy.txt fayli mavjud.
)

pause