object retreiveForm: TretreiveForm
  Left = 0
  Top = 0
  Caption = 'Retreive'
  ClientHeight = 429
  ClientWidth = 847
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 285
    Width = 95
    Height = 13
    Caption = 'Balance Bigger than'
  end
  object ListBox1: TListBox
    Left = 192
    Top = 32
    Width = 481
    Height = 177
    ItemHeight = 13
    TabOrder = 0
  end
  object showBtn: TButton
    Left = 56
    Top = 88
    Width = 89
    Height = 33
    Caption = 'Show All'
    TabOrder = 1
    OnClick = showBtnClick
  end
  object balanceBtn: TBitBtn
    Left = 536
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 2
    OnClick = balanceBtnClick
  end
  object Edit1: TEdit
    Left = 368
    Top = 282
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
