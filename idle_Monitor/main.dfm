object fMain: TfMain
  Left = 226
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'idle Monitor'
  ClientHeight = 73
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object lbWarning: TLabel
    Left = 16
    Top = 15
    Width = 10
    Height = 40
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object IdleTimer: TTimer
    OnTimer = IdleTimerTimer
    Left = 52
    Top = 12
  end
end
