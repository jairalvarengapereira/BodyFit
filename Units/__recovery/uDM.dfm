object DM: TDM
  OnCreate = DataModuleCreate
  Height = 325
  Width = 482
  PixelsPerInch = 120
  object FDConn: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'Database=D:\Projetos\Delphi\BodyFit\BD\BodyFit_BD.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnAfterConnect
    BeforeConnect = FDConnBeforeConnect
    Left = 40
    Top = 24
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 200
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 384
    Top = 24
  end
  object qryCliente: TFDQuery
    CachedUpdates = True
    Connection = FDConn
    SQL.Strings = (
      'Select * from cliente')
    Left = 40
    Top = 128
    object qryClienteCliente_ID: TFDAutoIncField
      FieldName = 'Cliente_ID'
      Origin = 'Cliente_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object qryClienteCliente_Nome: TWideMemoField
      FieldName = 'Cliente_Nome'
      Origin = 'Cliente_Nome'
      BlobType = ftWideMemo
    end
    object qryClienteCliiiente_Altura: TFloatField
      FieldName = 'Cliiiente_Altura'
      Origin = 'Cliiiente_Altura'
    end
    object qryClienteCliente_CPF: TWideMemoField
      FieldName = 'Cliente_CPF'
      Origin = 'Cliente_CPF'
      BlobType = ftWideMemo
    end
    object qryClienteCliente_Nascimento: TDateTimeField
      FieldName = 'Cliente_Nascimento'
      Origin = 'Cliente_Nascimento'
    end
    object qryClienteClienteEmail: TWideMemoField
      FieldName = 'Cliente-Email'
      Origin = '"Cliente-Email"'
      BlobType = ftWideMemo
    end
    object qryClienteCliente_Fone: TWideMemoField
      FieldName = 'Cliente_Fone'
      Origin = 'Cliente_Fone'
      BlobType = ftWideMemo
    end
    object qryClienteCliente_CEP: TWideMemoField
      FieldName = 'Cliente_CEP'
      Origin = 'Cliente_CEP'
      BlobType = ftWideMemo
    end
    object qryClienteCliente_Logradouro: TWideMemoField
      FieldName = 'Cliente_Logradouro'
      Origin = 'Cliente_Logradouro'
      BlobType = ftWideMemo
    end
    object qryClienteCliente_Num: TWideMemoField
      FieldName = 'Cliente_Num'
      Origin = 'Cliente_Num'
      BlobType = ftWideMemo
    end
    object qryClienteCliente_Complemento: TWideMemoField
      FieldName = 'Cliente_Complemento'
      Origin = 'Cliente_Complemento'
      BlobType = ftWideMemo
    end
    object qryClienteCliente_Bairro: TWideMemoField
      FieldName = 'Cliente_Bairro'
      Origin = 'Cliente_Bairro'
      BlobType = ftWideMemo
    end
    object qryClienteCliente_Cidade: TWideMemoField
      FieldName = 'Cliente_Cidade'
      Origin = 'Cliente_Cidade'
      BlobType = ftWideMemo
    end
    object qryClienteCliente_UF: TWideMemoField
      FieldName = 'Cliente_UF'
      Origin = 'Cliente_UF'
      BlobType = ftWideMemo
    end
  end
end
