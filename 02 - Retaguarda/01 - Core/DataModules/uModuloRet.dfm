object FrModuloRet: TFrModuloRet
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 319
  Width = 259
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 41
    Top = 58
  end
  object Query: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 136
    Top = 8
  end
  object tbPesq: TFDQuery
    Left = 136
    Top = 57
  end
  object DBConexaoII: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=G:\Projetos\GestaoComercial\02 - Retaguarda\03 - BD\sys' +
        'Retaguarda.fdb'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3051'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Transaction = Transact
    UpdateTransaction = Transact
    Left = 40
    Top = 112
  end
  object Transact: TFDTransaction
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DBConexaoII
    Left = 40
    Top = 160
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 148
    Top = 144
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 140
    Top = 204
  end
  object DBConexao: TFDConnection
    Params.Strings = (
      
        'Database=G:\Projetos\GestaoComercial\02 - Retaguarda\03 - BD\sys' +
        'Retaguarda.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3051'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 12
  end
end
