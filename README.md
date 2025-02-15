# Humanity Protocol
Bu kod Humanity Protocol test tarmog'ida ishlaydigan skript bo'lib, u orqali bir nechta hamyonlar uchun kunlik mukofotlarni olish va faucetdan token olish mumkin. Quyida ushbu skriptdan foydalanish bo'yicha to'liq qo'llanma keltirilgan.

Bu yerda roʻyxatdan oʻting: [Humanity Protocol](https://testnet.humanity.org/login?ref=jmsmm)

## Skriptni vazifalari

  - Avtomatik da'vo, har 24 soatda kundalik rewardlarni claim qilish
  - Har 5 daiqada avtomatik faucet
  - Ko'p hisoblar bilan ishlash    

## Skriptni sozlash

  - RPC_URL: Test tarmog'i RPC manzilini kiriting (masalan, https://rpc.testnet.humanity.org).
  - FAUCET_API_URL: Faucet API manzilini kiriting (masalan, https://faucet.testnet.humanity.org/api/claim).
  - CONTRACT_ADDRESS: Shartnoma manzilini kiriting (masalan, 0xa18f6FCB2Fd4884436d10610E69DB7BFa1bFe8C7).
  - WAIT_TIME_AFTER_REWARDS: Mukofotlarni qayta talab qilishdan oldin kutish vaqti (sekundlarda, standart: 24 soat).
  - WAIT_TIME_AFTER_ERROR: Xatolik yuz berganda qayta urinishdan oldin kutish vaqti (sekundlarda, standart: 1 daqiqa).
  - FAUCET_DELAY: Faucet so'rovlari orasidagi kutish vaqti (sekundlarda, standart: 5 daqiqa).
  - DELAY_BETWEEN_ACCOUNTS: Har bir hamyon uchun amallar orasidagi kutish vaqti (sekundlarda, standart: 5 soniya).

## Skriptni ishga tushirishdan oldin quyidagi talablarga amal qiling:
  **Dastlabki talablar:**

Python 3.8 dan yuqori va PIP o'rnatilganligiga ishonch hosil qiling.

## O'rnatish

1. **Repozitoriy klonlash:**
   ```bash
   
   ```
   ```bash
   cd Humanity Protocol
   ```

2. **O'rnatish talablari:**
   Skriptdagi
   ```bash
     INSTALL.BAT
   ```
   ni bosing yoki terminalni oching va skript joylashgan papkaga o'ting.
   Quyidagi buyruqni ishga tushiring:
   ```
   ```bash
   pip install -r requirements.txt
   ```
   yoki
   ```bash
   pip3 install -r requirements.txt
   ```
   bilan kutubxonalarni o'rnating

## Konfiguratsiya

1. **Fayllarni yaratish:**
   START.bat ni bosing, skript papkasida private_keys.txt va proxy.txt fayli yaratiladi. 

- **private_keys.txt:**
  private_keys.txt faylida skript formatiga mos keladigan ma'lumotlar mavjudligiga ishonch hosil qiling, aks holda skript ishlamaydi.
  Mana fayl formatlariga misollar, har bir proxyni yangi qatorda joylashtiring:
  
  ```bash
  privat key 1
  privat key 2
  privat key 3
  ```
- **proxy.txt:**
  proxy.txt faylida skript formatiga mos keladigan ma'lumotlar mavjudligiga ishonch hosil qiling, aks holda skript ishlamaydi.
  Mana fayl formatlariga misollar, har bir proxyni yangi qatorda joylashtiring:
  
  ```bash
  http://user:pass@ip:port - 1
  http://user:pass@ip:port - 2
  http://user:pass@ip:port - 3
  ```

## Ishga tushurish

   Terminalni oching va skript joylashgan papkaga o'ting.
   Quyidagi buyruqni ishga tushiring:

```bash
python bot.py
```
yoki
```bash
python3 bot.py
```

   Skript ishga tushgandan so'ng, quyidagi ma'lumotlar ekranda ko'rinadi:
   Yuklangan proksilar va hamyonlar soni.
   Blockchain tarmog'iga ulanish holati.
   Mukofotlarni talab qilish va faucet so'rovlarining natijalari.

## Skriptning ishlashi

   Mukofotlarni talab qilish:
   Har bir hamyon uchun claimReward funktsiyasi chaqiriladi.
   Agar tranzaksiya muvaffaqiyatli bo'lsa, TX Hash va vaqt log fayliga yoziladi.
   Agar tranzaksiya allaqachon yuborilgan bo'lsa, qayta urinish qilinmaydi.
   Xatolik yuz berganda, 1 daqiqa kutib qayta uriniladi.
   Faucetdan token so'rash:
   Har bir hamyon uchun faucet API-ga so'rov yuboriladi.
   So'rov muvaffaqiyatli bo'lsa, TX Hash va vaqt log fayliga yoziladi.
   Xatolik yuz berganda, xabar chiqariladi va keyingi hamyonga o'tiladi.
   Log fayli:
   Barcha amallar script.log fayliga yoziladi.
   Har 1 soatda eski loglar tozalanadi (1 soatdan oldingi yozuvlar o'chiriladi).
   
## Skriptni to'xtatish

   Skriptni to'xtatish uchun terminalda Ctrl + C tugmalarini bosing.

## Xatoliklar va ularni bartaraf qilish

   RPC ulanishi xatosi:
   RPC_URL manzilini tekshiring.
   Proxy serverlardan foydalanishni sinab ko'ring.
   Tranzaksiya xatosi:
   Hamyonlarda yetarli gas mavjudligini tekshiring.
   gas_price va gas_amount qiymatlarini moslashtiring.
   Faucet so'rovi xatosi:
   Faucet API manzilini tekshiring.
   Proxy serverlardan foydalanishni sinab ko'ring.
   Log fayli xatosi:
   LOG_FILE fayliga yozish uchun ruxsatlar mavjudligini tekshiring.

## Qo'shimcha maslahatlar

   Test rejimida ishlating:
   Skriptni asosiy tarmoqqa ulashdan oldin test tarmog'ida sinab ko'ring.
   Proxylardan foydalaning:
   Ko'p sonli so'rovlarni cheklovlardan saqlash uchun proxy serverlardan foydalaning.
   Log faylini kuzatib boring:
   script.log faylini tekshirib, skriptning ishlashini kuzatib boring.
   Ushbu qo'llanma orqali skriptni muvaffaqiyatli ishga tushirishingiz va Humanity Protocol test tarmog'ida mukofotlarni olishingiz mumkin.

## Penutup

   Ushbu omborga tashrif buyurganingiz uchun tashakkur, kuzatishlar va yulduzchalar shaklida hissa qo'shishni unutmang. Savollaringiz bo'lsa, muammolarga duch kelsangiz yoki    yaxshilash bo'yicha takliflaringiz bo'lsa, men bilan bog'laning yoki ushbu GitHub omborida muammoni oching.

**JMSM0707**
