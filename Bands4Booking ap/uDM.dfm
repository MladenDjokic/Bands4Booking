object dm: Tdm
  Height = 405
  Width = 380
  object dbLibrary: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\mlade\OneDrive\Desktop\Bands4Booking ap\assets' +
        '\database\bands4bookingdp.db3')
    Connected = True
    LoginPrompt = False
    Left = 160
    Top = 104
  end
  object QTemp: TFDQuery
    Connection = dbLibrary
    SQL.Strings = (
      'Select * from users')
    Left = 256
    Top = 136
  end
end
