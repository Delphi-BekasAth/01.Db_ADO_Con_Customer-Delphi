object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 364
  ClientWidth = 520
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
    Left = 48
    Top = 232
    Width = 34
    Height = 13
    Caption = 'Name: '
  end
  object cusGrid: TDBGrid
    Left = 40
    Top = 24
    Width = 393
    Height = 145
    DataSource = dm1.cusDS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PHONE'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AFM'
        Visible = True
      end>
  end
  object cusNav: TDBNavigator
    Left = 120
    Top = 175
    Width = 240
    Height = 25
    DataSource = dm1.cusDS
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 103
    Top = 232
    Width = 121
    Height = 21
    DataField = 'NAME'
    DataSource = dm1.cusDS
    TabOrder = 2
  end
  object sortBtn: TButton
    Left = 304
    Top = 230
    Width = 75
    Height = 25
    Caption = 'Sort'
    TabOrder = 3
    OnClick = sortBtnClick
  end
  object rtrvFrmBtn: TButton
    Left = 56
    Top = 304
    Width = 81
    Height = 25
    Caption = 'Retreive'
    TabOrder = 4
    OnClick = rtrvFrmBtnClick
  end
end
