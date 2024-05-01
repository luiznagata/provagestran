object dmPrincipal: TdmPrincipal
  Height = 497
  Width = 941
  PixelsPerInch = 144
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL'
      'Server=localhost\SQLEXPRESS'
      'User_Name=admgestrran'
      'Password=Gestran@#$'
      'Database=GestranSoft'
      'OSAuthent=Yes')
    Connected = True
    Left = 48
    Top = 16
  end
  object fdqVendedor: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Vendedores order by id_vendedor;')
    Left = 184
    Top = 16
  end
  object fxrVendedores: TfrxReport
    Version = '2023.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45412.699668842600000000
    ReportOptions.LastChange = 45412.720499108790000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 56
    Top = 192
    Datasets = <
      item
        DataSet = frxDBDSRelVendas
        DataSetName = 'frxDBDSRelVendas'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Vendas')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDSRelVendas."nome_vendedor"'
        object Memo7: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 22.677180000000000000
          DataField = 'nome_vendedor'
          DataSet = frxDBDSRelVendas
          DataSetName = 'frxDBDSRelVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            '[frxDBDSRelVendas."nome_vendedor"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 178.858380000000000000
          Top = 26.456710000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'data_venda')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 256.858380000000000000
          Top = 26.456710000000000000
          Width = 85.000000000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'total_vendas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 341.858380000000000000
          Top = 26.456710000000000000
          Width = 99.000000000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'total_desconto')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 440.858380000000000000
          Top = 26.456710000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'total_valor')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDSRelVendas
        DataSetName = 'frxDBDSRelVendas'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 178.417440000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'data_venda'
          DataSet = frxDBDSRelVendas
          DataSetName = 'frxDBDSRelVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDSRelVendas."data_venda"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 256.417440000000000000
          Width = 85.000000000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'total_vendas'
          DataSet = frxDBDSRelVendas
          DataSetName = 'frxDBDSRelVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDSRelVendas."total_vendas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 341.417440000000000000
          Width = 99.000000000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'total_desconto'
          DataSet = frxDBDSRelVendas
          DataSetName = 'frxDBDSRelVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDSRelVendas."total_desconto"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 440.417440000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'total_valor'
          DataSet = frxDBDSRelVendas
          DataSetName = 'frxDBDSRelVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDSRelVendas."total_valor"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 219.212740000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo14: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520117773437500000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object fdqRelVendas: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '    Vendedores.nome_vendedor,'
      '    Vendas.data_venda,'
      '    Sum(Vendas.valor_venda) AS total_vendas,'
      '    Sum(Vendas.valor_desconto) AS total_desconto,'
      '    Sum(Vendas.valor_total) AS total_valor'
      'FROM'
      '    Vendas'
      'INNER JOIN '
      '    Vendedores ON Vendas.id_vendedor = Vendedores.id_vendedor'
      'Where Vendedores.id_vendedor = 1'
      'GROUP BY'
      '    Vendedores.nome_vendedor, Vendas.data_venda'
      'ORDER BY'
      '    Vendedores.nome_vendedor, Vendas.data_venda;')
    Left = 336
    Top = 24
  end
  object frxDBDSRelVendas: TfrxDBDataset
    UserName = 'frxDBDSRelVendas'
    CloseDataSource = False
    DataSet = fdqRelVendas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 240
    Top = 200
  end
  object frxDBDsResumo: TfrxDBDataset
    UserName = 'frxDBDsResumo'
    CloseDataSource = False
    DataSet = FDQryResumoFinal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 216
    Top = 344
  end
  object FDQryResumoFinal: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '    Vendedores.nome_vendedor,'
      #9'Vendedores.comissao,'
      '    SUM(Vendas.valor_venda) AS total_vendas,'
      '    SUM(Vendas.valor_desconto) AS total_desconto,'
      '    SUM(Vendas.valor_total) AS total_valor'
      'FROM'
      '    Vendas'
      'INNER JOIN '
      '    Vendedores ON Vendas.id_vendedor = Vendedores.id_vendedor'
      'GROUP BY'
      '    Vendedores.nome_vendedor,Vendedores.comissao'
      'ORDER BY'
      '    total_valor;')
    Left = 520
    Top = 32
  end
  object frxResumo: TfrxReport
    Version = '2023.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45412.722860219900000000
    ReportOptions.LastChange = 45412.723811250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 56
    Top = 344
    Datasets = <
      item
        DataSet = frxDBDsResumo
        DataSetName = 'frxDBDsResumo'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Height = 22.677180000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio do Resumo das Vendas')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 151.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'nome_vendedor')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 151.000000000000000000
          Width = 85.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'total_vendas')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 236.000000000000000000
          Width = 99.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'total_desconto')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 335.000000000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'total_valor')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDsResumo
        DataSetName = 'frxDBDsResumo'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Width = 151.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nome_vendedor'
          DataSet = frxDBDsResumo
          DataSetName = 'frxDBDsResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDsResumo."nome_vendedor"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 151.000000000000000000
          Width = 85.000000000000000000
          Height = 18.897650000000000000
          DataField = 'total_vendas'
          DataSet = frxDBDsResumo
          DataSetName = 'frxDBDsResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDsResumo."total_vendas"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 236.000000000000000000
          Width = 99.000000000000000000
          Height = 18.897650000000000000
          DataField = 'total_desconto'
          DataSet = frxDBDsResumo
          DataSetName = 'frxDBDsResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDsResumo."total_desconto"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 335.000000000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'total_valor'
          DataSet = frxDBDsResumo
          DataSetName = 'frxDBDsResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDsResumo."total_valor"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110717773437500000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo13: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520117773437500000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object FDQryResumo: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '    Vendedores.id_vendedor,'
      '    Vendedores.nome_vendedor,'
      '    SUM(Vendas.valor_venda) AS total_vendas,'
      '    SUM(Vendas.valor_desconto) AS total_desconto,'
      '    SUM(Vendas.valor_total) AS total_valor'
      'FROM'
      '    Vendas'
      'INNER JOIN '
      '    Vendedores ON Vendas.id_vendedor = Vendedores.id_vendedor'
      'GROUP BY'
      '    Vendedores.id_vendedor,Vendedores.nome_vendedor'
      'ORDER BY'
      '    total_valor;')
    Left = 728
    Top = 64
    object FDQryResumoid_vendedor: TFDAutoIncField
      FieldName = 'id_vendedor'
      Origin = 'id_vendedor'
    end
    object FDQryResumonome_vendedor: TStringField
      FieldName = 'nome_vendedor'
      Origin = 'nome_vendedor'
    end
    object FDQryResumototal_vendas: TFloatField
      FieldName = 'total_vendas'
      Origin = 'total_vendas'
      ReadOnly = True
    end
    object FDQryResumototal_desconto: TFloatField
      FieldName = 'total_desconto'
      Origin = 'total_desconto'
      ReadOnly = True
    end
    object FDQryResumototal_valor: TFloatField
      FieldName = 'total_valor'
      Origin = 'total_valor'
      ReadOnly = True
    end
  end
  object FDQryUpdateComissao: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Update Vendedores set Vendedores.comissao = :valorcomissao'
      'where Vendedores.id_vendedor = :vendedor'
      '')
    Left = 544
    Top = 232
    ParamData = <
      item
        Name = 'VALORCOMISSAO'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
