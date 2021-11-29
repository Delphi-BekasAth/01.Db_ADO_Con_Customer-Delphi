object dm1: Tdm1
  OldCreateOrder = False
  Height = 376
  Width = 535
  object con: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=DelphiTestDb;Data Source=""' +
      ';Initial File Name="";Server SPN=""'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 40
    Top = 32
  end
  object cusTbl: TADOTable
    Active = True
    Connection = con
    CursorType = ctStatic
    TableName = 'CUSTOMER'
    Left = 88
    Top = 32
  end
  object cusDS: TDataSource
    DataSet = cusTbl
    Left = 136
    Top = 32
  end
end
