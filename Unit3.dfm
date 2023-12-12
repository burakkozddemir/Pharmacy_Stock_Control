object Form3: TForm3
  Left = 565
  Top = 540
  AlphaBlendValue = 200
  BiDiMode = bdRightToLeftReadingOnly
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Form3'
  ClientHeight = 126
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentBiDiMode = False
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object Label1: TLabel
    Left = 184
    Top = 75
    Width = 375
    Height = 25
    AutoSize = False
    Caption = 'DATABASE Y'#220'KLEN'#304'YOR L'#220'TFEN BEKLEY'#304'N.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 655
    Top = 40
    Width = 5
    Height = 23
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 24
    Top = 40
    Width = 681
    Height = 29
    TabOrder = 0
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 190
    OnTimer = Timer1Timer
    Left = 48
    Top = 88
  end
end
