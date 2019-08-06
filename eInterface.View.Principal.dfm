object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btn_cria: TButton
    Left = 94
    Top = 144
    Width = 75
    Height = 25
    Caption = 'btn_cria'
    Enabled = False
    TabOrder = 0
    OnClick = btn_criaClick
  end
  object Nome: TEdit
    Left = 48
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object sobrenome: TEdit
    Left = 48
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Logs: TMemo
    Left = 232
    Top = 40
    Width = 177
    Height = 129
    Lines.Strings = (
      'Logs')
    TabOrder = 3
  end
  object cm_tipoPessoa: TComboBox
    Left = 48
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Selecione o tipo'
    OnChange = cm_tipoPessoaChange
    OnClick = cm_tipoPessoaClick
    Items.Strings = (
      'Pessoa F'#237'sica'
      'Pessoa Jur'#237'dica')
  end
end
