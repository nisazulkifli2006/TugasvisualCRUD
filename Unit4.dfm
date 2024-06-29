object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 687
  Top = 124
  Height = 150
  Width = 359
  object con: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'libmysql.dll'
    Left = 32
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con
    Active = True
    SQL.Strings = (
      'SELECT * FROM kategori')
    Params = <>
    Left = 80
    Top = 40
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 136
    Top = 40
  end
end
