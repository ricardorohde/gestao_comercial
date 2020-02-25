object FrModulo: TFrModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 406
  Width = 476
  object DBCon_Local: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=G:\Projetos\GestaoComercial\01 - Frente de Caixa\04 - B' +
        'D\sysFrenteCaixa.fdb'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3051'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    ConnectedStoredUsage = []
    Connected = True
    LoginPrompt = False
    Left = 30
    Top = 60
  end
  object DBCon_Remoto: TFDConnection
    Params.Strings = (
      'Protocol=TCPIP'
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\Winston M. de Jesus\Projetos em Delphi\Gest'#227'o ' +
        'Empresarial\02 - Retaguarda\03 - BD\SYSRETAGUARDA.FDB'
      'Server=127.0.0.1'
      'Port=3051'
      'DriverID=FB'
      'ExtendedMetadata=True'
      'PageSize=16384'
      'CharacterSet=ISO8859_1')
    ConnectedStoredUsage = []
    LoginPrompt = False
    OnError = DBCon_RemotoError
    Left = 30
    Top = 114
  end
  object DBConfigServer: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftAutoInc
      end
      item
        Name = 'CON_DATA_REG'
        DataType = ftTimeStamp
      end
      item
        Name = 'CON_DESCRICAO'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CON_HOST_IP'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'CON_PROTOCOLO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CON_PORTA'
        DataType = ftInteger
      end
      item
        Name = 'CON_DESTINO'
        DataType = ftInteger
      end
      item
        Name = 'CON_DATABASE'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'CON_OBSERVACAO'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'CON_USUARIO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CON_SENHA'
        DataType = ftString
        Size = 12
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 30
    Top = 8
  end
  object Sql_Remoto: TFDQuery
    Connection = DBCon_Remoto
    Left = 100
    Top = 230
  end
  object Sql_Local: TFDQuery
    Connection = DBCon_Local
    Left = 30
    Top = 230
  end
  object QueryL: TFDQuery
    Connection = DBCon_Local
    Left = 30
    Top = 174
  end
  object QueryR: TFDQuery
    Connection = DBCon_Remoto
    Left = 100
    Top = 174
  end
  object IdTCPClient1: TIdTCPClient
    OnConnected = IdTCPClient1Connected
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 288
    Top = 8
  end
  object Query: TFDQuery
    Connection = DBCon_Local
    Left = 100
    Top = 8
  end
  object aQuery: TFDQuery
    Connection = DBCon_Local
    Left = 24
    Top = 304
  end
end
