object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 452
  ClientWidth = 400
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
    Top = 0
    Width = 400
    Height = 400
    Align = alClient
    ExplicitWidth = 445
    ExplicitHeight = 273
  end
  object pnlButtons: TPanel
    Left = 0
    Top = 400
    Width = 400
    Height = 52
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 0
    object btnSnowMan: TButton
      Left = 136
      Top = 16
      Width = 129
      Height = 25
      Caption = 'Draw'
      TabOrder = 0
      OnClick = btnSnowManClick
    end
  end
  object tmrDrawStars: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrDrawStarsTimer
    Left = 16
    Top = 8
  end
  object tmrDieStars: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrDieStarsTimer
    Left = 64
    Top = 8
  end
end
