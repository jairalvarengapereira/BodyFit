--
-- Arquivo gerado com SQLiteStudio v3.4.4 em seg mar 25 12:21:22 2024
--
-- Codificação de texto usada: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: BioImpedancia
CREATE TABLE IF NOT EXISTS BioImpedancia (Bioimp_ID INTEGER PRIMARY KEY AUTOINCREMENT, Bioimp_Cliente INTEGER REFERENCES Cliente (Cliente_ID) ON DELETE CASCADE, Bioimp_Data DateTime, Bioimp_AccTbw REAL, Bioimp_AccProteina REAL, Bioimp_AccMinerais REAL, Bioimp_AccMGC REAL, Bioimp_AccMM REAL, Bioimp_MLG REAL, Bioimp_Peso REAL, Bioimp_AmgMME REAL, Bioimp_AmgMGC REAL, Bioimp_DoIMC REAL, Bioimp_DoPGC REAL, Bioimp_DoRCQ REAL, Bioimp_AnProt TEXT, Bioimp_AnMin TEXT, Bioimp_AnGo TEXT, Bioimp_GpPeso TEXT, Bioimp_GpMME TEXT, Bioimp_GpGord TEXT, Bioimp_MmsBe REAL, Bioimp_MmsBd REAL, Bioimp_MmsTr REAL, Bioimp_MmsPe REAL, Bioimp_MmsPd REAL, Bioimp_GsBe REAL, Bioimp_GsBd REAL, Bioimp_GsTr REAL, Bioimp_GsPe REAL, Bioimp_GsPd REAL, Bioimp_TMB INTEGER);

-- Tabela: Cliente
CREATE TABLE IF NOT EXISTS Cliente (Cliente_ID INTEGER PRIMARY KEY AUTOINCREMENT, Cliente_Nome TEXT, Cliiiente_Altura REAL, Cliente_CPF TEXT, Cliente_Nascimento Datetime, "Cliente-Email" TEXT, Cliente_Fone TEXT, Cliente_CEP TEXT, Cliente_Logradouro TEXT, Cliente_Num TEXT, Cliente_Complemento TEXT, Cliente_Bairro TEXT, Cliente_Cidade TEXT, Cliente_UF TEXT);

-- Tabela: Fotos
CREATE TABLE IF NOT EXISTS Fotos (Fotos_ID INTEGER PRIMARY KEY AUTOINCREMENT, Fotos_Cliente INTEGER REFERENCES Cliente (Cliente_ID) ON DELETE CASCADE, Fotos_Desc TEXT, Fotos_Data DateTime, Fotos_Foto BLOB);

-- Tabela: Investimento
CREATE TABLE IF NOT EXISTS Investimento (Investimento_ID INTEGER PRIMARY KEY AUTOINCREMENT, Investimento_Cliente INTEGER REFERENCES Cliente (Cliente_ID) ON DELETE CASCADE, Investimento_Data DateTime, Investimento_Vlr REAL, Investimento_Obs TEXT);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
