object DM: TDM
  OnCreate = DataModuleCreate
  Height = 325
  Width = 482
  PixelsPerInch = 120
  object FDConn: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'Database=D:\Projetos\Delphi\BodyFit\Win32\Debug\BodyFit_BD.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnAfterConnect
    BeforeConnect = FDConnBeforeConnect
    Left = 40
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 176
    Top = 24
  end
  object qryCliente: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'Select * from cliente')
    Left = 32
    Top = 112
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 352
    Top = 32
  end
end