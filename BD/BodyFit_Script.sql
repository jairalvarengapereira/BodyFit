--
-- Arquivo gerado com SQLiteStudio v3.4.4 em ter mar 19 20:15:12 2024
--
-- Codificação de texto usada: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: BioImpedancia
CREATE TABLE IF NOT EXISTS BioImpedancia (Bioimp_ID INTEGER PRIMARY KEY AUTOINCREMENT, Bioimp_Cliente INTEGER REFERENCES Cliente (Cliente_ID) ON DELETE NO ACTION, Bioimp_Data DateTime, Bioimp_AccTbw REAL, Bioimp_AccProteina REAL, Bioimp_AccMinerais REAL, Bioimp_AccMGC REAL, Bioimp_AccMM REAL, Bioimp_MLG REAL, Bioimp_Peso REAL, Bioimp_AmgMME REAL, Bioimp_AmgMGC REAL, Bioimp_DoIMC REAL, Bioimp_DoPGC REAL, Bioimp_DoRCQ REAL, Bioimp_AnProt TEXT (2), Bioimp_AnMin TEXT (2), Bioimp_AnGo TEXT (2), Bioimp_GpPeso TEXT (2), Bioimp_GpMME TEXT (2), Bioimp_GpGord TEXT (2), Bioimp_MmsBe REAL, Bioimp_MmsBd REAL, Bioimp_MmsTr REAL, Bioimp_MmsPe REAL, Bioimp_MmsPd REAL, Bioimp_GsBe REAL, Bioimp_GsBd REAL, Bioimp_GsTr REAL, Bioimp_GsPe REAL, Bioimp_GsPd REAL, Bioimp_TMB INTEGER);

-- Tabela: Cliente
CREATE TABLE IF NOT EXISTS Cliente (Cliente_ID INTEGER PRIMARY KEY AUTOINCREMENT, Cliente_Nome TEXT (100), "Cliente-Email" TEXT (100), Cliente_Fone NUMERIC (20), Cliente_End TEXT (100), Cliente_Bairro TEXT (100), Cliente_Cidade TEXT (100), Cliente_UF TEXT (2), Cliente_CEP TEXT (10));

-- Tabela: Fotos
CREATE TABLE IF NOT EXISTS Fotos (Fotos_ID INTEGER PRIMARY KEY AUTOINCREMENT, Fotos_Cliente INTEGER REFERENCES Cliente (Cliente_ID) ON DELETE NO ACTION, Fotos_Desc TEXT (100), Fotos_Data DateTime, Fotos_Foto BLOB);

-- Tabela: Investimento
CREATE TABLE IF NOT EXISTS Investimento (Invest_ID INTEGER PRIMARY KEY AUTOINCREMENT, Invest_Cliente INTEGER REFERENCES Cliente (Cliente_ID) ON DELETE NO ACTION, Invest_Data DateTime, Invest_Vlr REAL, Invest_Obs TEXT (300));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
