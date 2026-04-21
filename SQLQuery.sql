
CREATE TABLE sepet (
    sepet_id INT PRIMARY KEY,
    musteri_id INT NOT NULL,
    urun_id INT NOT NULL,
    durum VARCHAR(20) NOT NULL DEFAULT 'Sepette',
    eklenme_tarihi DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Sepet_Musteri FOREIGN KEY (musteri_id) REFERENCES musteriler(musteri_id),
    CONSTRAINT FK_Sepet_Urun FOREIGN KEY (urun_id) REFERENCES urunler(urun_id)
);
GO

-- 2. Hakan'ın Terk Ettiği Sepeti (25 saat öncesine) Sisteme Ekliyoruz
INSERT INTO sepet (sepet_id, musteri_id, urun_id, durum, eklenme_tarihi)
VALUES (1, 4, 3, 'Sepette', DATEADD(hour, -25, GETDATE()));
GO
SELECT 
    m.ad_soyad AS 'Kaçak Müşteri',
    m.email AS 'E-Posta Adresi',
    u.urun_adi AS 'Unuttuğu Ürün',
    s.eklenme_tarihi AS 'Sepete Atma Zamanı'
FROM sepet s
INNER JOIN musteriler m ON s.musteri_id = m.musteri_id
INNER JOIN urunler u ON s.urun_id = u.urun_id
WHERE s.durum = 'Sepette' 
  AND s.eklenme_tarihi < DATEADD(hour, -24, GETDATE());