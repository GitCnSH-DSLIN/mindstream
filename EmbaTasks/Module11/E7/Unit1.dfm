object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 452
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pbxEx: TPaintBox
    Left = 0
    Top = 52
    Width = 600
    Height = 400
    Align = alClient
    ExplicitTop = 0
    ExplicitWidth = 445
    ExplicitHeight = 273
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 52
    Align = alTop
    TabOrder = 0
    object lblA: TLabel
      Left = 10
      Top = 19
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object lblB: TLabel
      Left = 80
      Top = 19
      Width = 6
      Height = 13
      Caption = 'B'
    end
    object lblC: TLabel
      Left = 149
      Top = 19
      Width = 7
      Height = 13
      Caption = 'C'
    end
    object btnDraw: TButton
      Left = 416
      Top = 14
      Width = 129
      Height = 25
      Caption = 'Draw'
      TabOrder = 0
      OnClick = btnDrawClick
    end
    object edtA: TEdit
      Left = 28
      Top = 16
      Width = 42
      Height = 21
      TabOrder = 1
      Text = '40'
    end
    object edtB: TEdit
      Left = 97
      Top = 16
      Width = 42
      Height = 21
      TabOrder = 2
      Text = '40'
    end
    object edtC: TEdit
      Left = 167
      Top = 16
      Width = 42
      Height = 21
      TabOrder = 3
      Text = '40'
    end
  end
end
