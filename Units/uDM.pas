unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet,
  DataSet.Serialize.Config,
  RESTRequest4D,
  Dataset.Serialize.Adapter.RESTRequest4D,
  DataSet.Serialize,
  System.JSON;

type
  TDM = class(TDataModule)
    FDConn: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryCliente: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure FDConnBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ListarCliente;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  TDataSetSerializeConfig.GetInstance.CaseNameDefinition := cndLower;
  FDConn.Connected := True;
end;

procedure TDM.FDConnAfterConnect(Sender: TObject);
begin
//  Try
//    FDConn.ExecSQL('Drop table Cliente ');
//    FDConn.ExecSQL('Drop table BioImpedancia ');
//    FDConn.ExecSQL('Drop table Fotos');
//    FDConn.ExecSQL('Drop table Investimento');
//  except
//  End;


  // Cliente
  FDConn.ExecSQL('CREATE TABLE IF NOT EXISTS Cliente (Cliente_ID INTEGER PRIMARY KEY AUTOINCREMENT, '+
                 'Cliente_Nome TEXT, Cliente_Altura REAL, Cliente_CPF TEXT, '+
                 'Cliente_Nascimento Datetime, Cliente_Email TEXT, Cliente_Fone TEXT, '+
                 'Cliente_CEP TEXT, Cliente_Logradouro TEXT, Cliente_Num TEXT, '+
                 'Cliente_Complemento TEXT, Cliente_Bairro TEXT, Cliente_Cidade TEXT, '+
                 'Cliente_UF TEXT);');

  // Bioimped�ncia
  FDConn.ExecSQL('CREATE TABLE IF NOT EXISTS BioImpedancia '+
                 '(Bioimp_ID INTEGER PRIMARY KEY AUTOINCREMENT, '+
                 'Bioimp_Cliente INTEGER REFERENCES Cliente (Cliente_ID) ON DELETE CASCADE, '+
                 'Bioimp_Data DateTime, Bioimp_AccTbw REAL, '+
                 'Bioimp_AccProteina REAL, Bioimp_AccMinerais REAL, '+
                 'Bioimp_AccMGC REAL, Bioimp_AccMM REAL, Bioimp_MLG REAL, '+
                 'Bioimp_Peso REAL, Bioimp_AmgMME REAL, Bioimp_AmgMGC REAL, '+
                 'Bioimp_DoIMC REAL, Bioimp_DoPGC REAL, Bioimp_DoRCQ REAL, '+
                 'Bioimp_AnProt TEXT, Bioimp_AnMin TEXT, '+
                 'Bioimp_AnGo TEXT, Bioimp_GpPeso TEXT, Bioimp_GpMME TEXT, '+
                 'Bioimp_GpGord TEXT, Bioimp_MmsBe REAL, Bioimp_MmsBd REAL, '+
                 'Bioimp_MmsTr REAL, Bioimp_MmsPe REAL, Bioimp_MmsPd REAL,'+
                 'Bioimp_GsBe REAL, Bioimp_GsBd REAL, Bioimp_GsTr REAL, '+
                 'Bioimp_GsPe REAL, Bioimp_GsPd REAL, Bioimp_TMB INTEGER);');

  // Fotos
  FDConn.ExecSQL('CREATE TABLE IF NOT EXISTS Fotos (Fotos_ID INTEGER PRIMARY KEY AUTOINCREMENT, '+
                 'Fotos_Cliente INTEGER REFERENCES Cliente (Cliente_ID) ON DELETE CASCADE, '+
                 'Fotos_Desc TEXT, Fotos_Data DateTime, Fotos_Foto BLOB);');

  // Investimento
  FDConn.ExecSQL('CREATE TABLE IF NOT EXISTS Investimento (Investimento_ID INTEGER PRIMARY KEY AUTOINCREMENT, '+
                 'Investimento_Cliente INTEGER REFERENCES Cliente (Cliente_ID) ON DELETE CASCADE, '+
                 'Investimento_Data DateTime, Investimento_Vlr REAL, Investimento_Obs TEXT);');


end;

procedure TDM.FDConnBeforeConnect(Sender: TObject);
begin
  FDConn.DriverName := 'SQLite';

  {$IFDEF MSWINDOWS}
  FDConn.Params.Values['DataBase'] := System.SysUtils.GetCurrentDir + '\BodyFit_BD.db';
  {$ELSE}
  Conn.Params.Values['DataBase'] := TPath.Combine(TPath.GetDocumentsPath, 'BodyFit_BD');
  {$ENDIF}
end;

procedure TDM.ListarCliente;
begin
  with qryCliente do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'Select * from cliente Order By Cliente_Nome';
    Open;
  end;
end;

end.