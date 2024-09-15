USE projektiDBA

CREATE TABLE Kategorite (
    ID_Kategorise INT PRIMARY KEY,
    Emri_Kategorise VARCHAR(255) NOT NULL
);

CREATE TABLE Furnizuesit (
    ID_Furnizuesit INT PRIMARY KEY,
    Emri_Furnizuesit VARCHAR(255) NOT NULL,
    Informacioni_Kontaktit VARCHAR(255)
);

CREATE TABLE Produktet (
    ID_Produktit INT PRIMARY KEY,
    Emri_Produktit VARCHAR(255) NOT NULL,
    ID_Kategorise INT,
    ID_Furnizuesit INT,
    Cmimi DECIMAL(10, 2),
    Sasia_Ne_Stok INT,
    FOREIGN KEY (ID_Kategorise) REFERENCES Kategorite(ID_Kategorise),
    FOREIGN KEY (ID_Furnizuesit) REFERENCES Furnizuesit(ID_Furnizuesit)
);

CREATE TABLE Klientet (
    ID_Klientit INT PRIMARY KEY,
    Emri_Klientit VARCHAR(255) NOT NULL,
    Informacioni_Kontaktit VARCHAR(255),
    Adresa VARCHAR(255)
);

CREATE TABLE Porosite (
    ID_Porosis INT PRIMARY KEY,
    ID_Klientit INT,
    Data_Porosis DATE,
    Shuma_Totale DECIMAL(10, 2),
    FOREIGN KEY (ID_Klientit) REFERENCES Klientet(ID_Klientit)
);

CREATE TABLE Detajet_Porosis (
    ID_Detajet_Porosis INT PRIMARY KEY,
    ID_Porosis INT,
    ID_Produktit INT,
    Sasia INT,
    Cmimi_Njesi DECIMAL(10, 2),
    FOREIGN KEY (ID_Porosis) REFERENCES Porosite(ID_Porosis),
    FOREIGN KEY (ID_Produktit) REFERENCES Produktet(ID_Produktit)
);

CREATE TABLE Pagesat (
    ID_Pageses INT PRIMARY KEY,
    ID_Porosis INT,
    Data_Pageses DATE,
    Shuma DECIMAL(10, 2),
    Metoda_Pageses VARCHAR(50),
    FOREIGN KEY (ID_Porosis) REFERENCES Porosite(ID_Porosis)
);
