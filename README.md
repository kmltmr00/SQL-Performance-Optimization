# SQL-Performance-Optimization
# 🚀 SQL Server Performance Optimization Portfolio

Bu repo, SQL Server sorgu optimizasyonu ve index tasarımı üzerine yaptığım pratik çalışmaları içerir. Gerçek dünya senaryolarını simüle eden çeşitli sorguları optimize ederek performans iyileştirmeleri elde ettim.

## 📊 Performance Improvements Summary

| Sorgu | Optimizasyon Öncesi | Optimizasyon Sonrası | Kazanım |
| :--- | :--- | :--- | :--- |
| **Sorgu 1** | Clustered Index Scan | Index Seek | %99+ |
| **Sorgu 2** | Clustered Index Scan | Index Seek | %99+ |
| **Sorgu 3** | Sort Operator (+46 Cost) | Index Scan | **Sort operatörü kalktı** |
| **Sorgu 4** | Hash Match Aggregate (+27 Cost) | Stream Aggregate | **%90+ IO düşüşü** |

## 🏆 Key Achievements

- ✅ **Hash Match → Stream Aggregate** dönüşümü başarıldı
- ✅ **Sort operatörü** tamamen ortadan kaldırıldı
- ✅ **Logical Reads** değerlerinde %90+ iyileşme sağlandı
- ✅ Hem **basit** hem de **komplex** sorgular optimize edildi
- ✅ **Covering Index** konsepti başarıyla uygulandı

## 🛠️ Technologies Used

- **Microsoft SQL Server**
- **T-SQL**
- **Execution Plan Analysis**
- **STATISTICS IO / TIME**
- **Index Design & Optimization**

