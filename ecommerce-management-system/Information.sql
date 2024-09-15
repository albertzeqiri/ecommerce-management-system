USE projektiDBA

INSERT INTO Kategorite (ID_Kategorise, Emri_Kategorise) VALUES (1, 'Elektronika');
INSERT INTO Kategorite (ID_Kategorise, Emri_Kategorise) VALUES (2, 'Libra');
INSERT INTO Kategorite (ID_Kategorise, Emri_Kategorise) VALUES (3, 'Veshje');

INSERT INTO Furnizuesit (ID_Furnizuesit, Emri_Furnizuesit, Informacioni_Kontaktit) VALUES (1, 'Furnizuesi A', 'info@furnizuesia.com');
INSERT INTO Furnizuesit (ID_Furnizuesit, Emri_Furnizuesit, Informacioni_Kontaktit) VALUES (2, 'Furnizuesi B', 'info@furnizuesib.com');

INSERT INTO Produktet (ID_Produktit, Emri_Produktit, ID_Kategorise, ID_Furnizuesit, Cmimi, Sasia_Ne_Stok) VALUES (1, 'Laptop', 1, 1, 799.99, 50);
INSERT INTO Produktet (ID_Produktit, Emri_Produktit, ID_Kategorise, ID_Furnizuesit, Cmimi, Sasia_Ne_Stok) VALUES (2, 'Roman', 2, 2, 19.99, 100);
INSERT INTO Produktet (ID_Produktit, Emri_Produktit, ID_Kategorise, ID_Furnizuesit, Cmimi, Sasia_Ne_Stok) VALUES (3, 'Bluze', 3, 1, 14.99, 200);

INSERT INTO Klientet (ID_Klientit, Emri_Klientit, Informacioni_Kontaktit, Adresa) VALUES (1, 'Filan Fisteku', 'filan@example.com', 'Rruga xxx 123');
INSERT INTO Klientet (ID_Klientit, Emri_Klientit, Informacioni_Kontaktit, Adresa) VALUES (2, 'Filanja', 'filanja@example.com', 'Rruga xxx 456');

INSERT INTO Porosite (ID_Porosis, ID_Klientit, Data_Porosis, Shuma_Totale) VALUES (1, 1, '2024-06-22', 819.98);
INSERT INTO Porosite (ID_Porosis, ID_Klientit, Data_Porosis, Shuma_Totale) VALUES (2, 2, '2024-06-21', 34.98);

INSERT INTO Detajet_Porosis (ID_Detajet_Porosis, ID_Porosis, ID_Produktit, Sasia, Cmimi_Njesi) VALUES (1, 1, 1, 1, 799.99);
INSERT INTO Detajet_Porosis (ID_Detajet_Porosis, ID_Porosis, ID_Produktit, Sasia, Cmimi_Njesi) VALUES (2, 1, 3, 1, 14.99);
INSERT INTO Detajet_Porosis (ID_Detajet_Porosis, ID_Porosis, ID_Produktit, Sasia, Cmimi_Njesi) VALUES (3, 2, 2, 1, 19.99);
INSERT INTO Detajet_Porosis (ID_Detajet_Porosis, ID_Porosis, ID_Produktit, Sasia, Cmimi_Njesi) VALUES (4, 2, 3, 1, 14.99);

INSERT INTO Pagesat (ID_Pageses, ID_Porosis, Data_Pageses, Shuma, Metoda_Pageses) VALUES (1, 1, '2024-06-22', 819.98, 'Karte Krediti');
INSERT INTO Pagesat (ID_Pageses, ID_Porosis, Data_Pageses, Shuma, Metoda_Pageses) VALUES (2, 2, '2024-06-21', 34.98, 'Cash');
