object frmConcentrador: TfrmConcentrador
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o de Concentrador'
  ClientHeight = 279
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object rgConcentrador: TRadioGroup
    Left = 8
    Top = 32
    Width = 612
    Height = 105
    Caption = 'Concentrador'
    Items.Strings = (
      'EzTech'
      'CompanyTech'
      'Petroshow')
    TabOrder = 0
  end
  object bApplyConcentrador: TButton
    Left = 256
    Top = 152
    Width = 105
    Height = 25
    Caption = 'Selecionar'
    TabOrder = 1
    OnClick = bApplyConcentradorClick
  end
  object mmConcentrador: TMemo
    Left = 8
    Top = 192
    Width = 612
    Height = 63
    TabOrder = 2
  end
end
