# E-Commerce-Database-Architecture
# 🛒 E-Commerce Relational Database Architecture

Bu proje, uçtan uca bir e-ticaret veritabanı mimarisinin sıfırdan tasarımını ve otomasyonunu içermektedir.

## 🚀 Proje Yetenekleri ve Kullanılan Teknolojiler

* **Veri Bütünlüğü (Data Integrity):** `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `UNIQUE` ve `NOT NULL` kısıtlamaları (constraints) ile hatalı veri girişine karşı tam koruma sağlandı.
* **Otonom Sistemler (Triggers):** Müşteri sadakat programı için `AFTER INSERT` ve `AFTER DELETE` tetikleyicileri yazılarak puan ekleme/çıkarma işlemleri otomatikleştirildi.
* **İleri Düzey Raporlama (Advanced JOINs):** `INNER JOIN` ile ciro hesaplamaları, `LEFT JOIN + IS NULL` filtresi ile sepeti terk eden (Cart Abandonment) "hayalet" müşterilerin tespiti yapıldı.
* **Dinamik Rütbeleme (Views & Window Functions):** Müşterilerin puanlarına göre anlık olarak 'Premium', 'Silver' statülerine atanması için dinamik Görünümler (Views) oluşturuldu.

## 🗂️ Veritabanı Şeması (Tablolar)
1. `kategoriler`
2. `urunler`
3. `musteriler`
4. `siparisler`
5. `siparis_detaylari`
6. `sepet` (Terk edilmiş sepet analizi için gölge tablo)

---
SQL Server (T-SQL) kullanılarak geliştirilmiştir.*
