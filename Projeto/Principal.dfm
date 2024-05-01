object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Projeto GestranSoft'
  ClientHeight = 362
  ClientWidth = 1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -28
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 38
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1093
    Height = 57
    Align = alTop
    Caption = 'RELAT'#211'RIO DE VENDAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1087
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 57
    Width = 1093
    Height = 224
    Align = alTop
    Caption = 'Filtro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -28
    Font.Name = 'Segoe UI'
    Font.Style = []
    Items.Strings = (
      'Por Per'#237'odo:'
      'Agrupamento por vendedor (Ordenado por data):'
      'Resumo por Vendedor:')
    ParentFont = False
    TabOrder = 1
    OnClick = RadioGroup1Click
    ExplicitWidth = 1087
  end
  object Panel2: TPanel
    Left = 0
    Top = 281
    Width = 1093
    Height = 80
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1087
    object Button1: TButton
      Left = 413
      Top = 16
      Width = 223
      Height = 49
      Caption = 'Gerar Relat'#243'rio'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 960
      Top = 16
      Width = 121
      Height = 49
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -28
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object pnPeriodo: TPanel
    Left = 195
    Top = 107
    Width = 870
    Height = 42
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 2
      Top = 3
      Width = 122
      Height = 32
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 272
      Top = 3
      Width = 111
      Height = 32
      Caption = 'Data Final:'
    end
    object Label4: TLabel
      Left = 547
      Top = 3
      Width = 108
      Height = 32
      Caption = 'Vendedor:'
    end
    object meDataInicial: TMaskEdit
      Left = 133
      Top = 1
      Width = 128
      Height = 40
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object meDataFinal: TMaskEdit
      Left = 390
      Top = 1
      Width = 128
      Height = 40
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object cbVendedor1: TComboBox
      Left = 661
      Top = 1
      Width = 185
      Height = 40
      TabOrder = 2
    end
  end
  object pnAgrupamento: TPanel
    Left = 646
    Top = 167
    Width = 398
    Height = 42
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label3: TLabel
      Left = 11
      Top = 4
      Width = 108
      Height = 32
      Caption = 'Vendedor:'
    end
    object cbVendedor2: TComboBox
      Left = 130
      Top = 2
      Width = 174
      Height = 40
      TabOrder = 0
    end
  end
  object pnResumo: TPanel
    Left = 312
    Top = 228
    Width = 438
    Height = 42
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label5: TLabel
      Left = 11
      Top = 4
      Width = 108
      Height = 32
      Caption = 'Vendedor:'
    end
    object cbVendedor3: TComboBox
      Left = 128
      Top = 1
      Width = 174
      Height = 40
      TabOrder = 0
    end
  end
end
