object FrModuloRet: TFrModuloRet
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 337
  Width = 444
  object FDTransacao: TFDTransaction
    Connection = DBConexao
    Left = 41
    Top = 70
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 49
    Top = 146
  end
  object Query: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 128
    Top = 8
  end
  object tbPesq: TFDQuery
    Connection = DBConexao
    Left = 128
    Top = 73
  end
  object DBConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Winston M. de Jesus\Projetos em Delphi\Gest'#227'o ' +
        'Empresarial\02 - Retaguarda\03 - BD\SYSRETAGUARDA.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3051'
      'DriverID=FB')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Transaction = FDTransacao
    Left = 36
    Top = 16
  end
end
