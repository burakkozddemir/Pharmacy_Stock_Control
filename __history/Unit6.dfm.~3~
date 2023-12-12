object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 591
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 112
    Top = 24
    Width = 645
    Height = 145
    Caption = 'PSC '#220'YES'#304' OL '
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -120
    Font.Name = 'Impact'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 259
    Top = 395
    Width = 87
    Height = 15
    Caption = 'PAROLA G'#304'R'#304'N'#304'Z'
  end
  object Label3: TLabel
    Left = 213
    Top = 443
    Width = 133
    Height = 15
    Caption = 'PAROLAYI TEKAR G'#304'R'#304'N'#304'Z'
  end
  object Edit1: TEdit
    Left = 272
    Top = 256
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = #304'S'#304'M'
  end
  object Edit2: TEdit
    Left = 440
    Top = 256
    Width = 121
    Height = 23
    TabOrder = 1
    TextHint = 'SOY'#304'S'#304'M'
  end
  object Edit3: TEdit
    Left = 272
    Top = 312
    Width = 121
    Height = 23
    TabOrder = 2
    TextHint = 'E-POSTA'
  end
  object Edit4: TEdit
    Left = 440
    Top = 312
    Width = 121
    Height = 23
    TabOrder = 3
    TextHint = 'TELEFON'
  end
  object Edit5: TEdit
    Left = 352
    Top = 392
    Width = 121
    Height = 23
    PasswordChar = '*'
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 352
    Top = 440
    Width = 121
    Height = 23
    PasswordChar = '*'
    TabOrder = 5
  end
  object Button1: TButton
    Left = 376
    Top = 496
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 479
    Top = 395
    Width = 65
    Height = 17
    Caption = 'G'#246'ster'
    TabOrder = 7
    OnClick = CheckBox1Click
  end
  object Edit7: TEdit
    Left = 352
    Top = 357
    Width = 121
    Height = 23
    TabOrder = 8
    TextHint = 'Kullan'#305'c'#305' Ad'#305
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\burak\OneDrive\Masa'#252'st'#252'\ECZA DEPOSU STOK KONTROL PROGRAMI\Wi' +
      'n32\Debug\psc1.mdb;Mode=ReadWrite;Persist Security Info=False;Je' +
      't OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:' +
      'Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database ' +
      'Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Glo' +
      'bal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet O' +
      'LEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fal' +
      'se;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compac' +
      't Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 520
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Giri'#351
    Left = 80
    Top = 438
    object ADOTable1Kimlik: TAutoIncField
      FieldName = 'Kimlik'
      ReadOnly = True
    end
    object ADOTable1K_A: TWideStringField
      FieldName = 'K_A'
      Size = 255
    end
    object ADOTable1K_S: TWideStringField
      FieldName = 'K_S'
      Size = 255
    end
    object ADOTable1İSİM: TWideStringField
      FieldName = #304'S'#304'M'
      Size = 255
    end
    object ADOTable1SOY: TWideStringField
      FieldName = 'SOY'
      Size = 255
    end
    object ADOTable1EMAİL: TWideStringField
      FieldName = 'EMA'#304'L'
      Size = 255
    end
    object ADOTable1tel: TWideStringField
      FieldName = 'tel'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 64
    Top = 276
  end
end
