object formCadMovimentacao: TformCadMovimentacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de movimenta'#231#227'o'
  ClientHeight = 575
  ClientWidth = 1430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 43
    Top = 32
    Width = 379
    Height = 35
    Caption = 'Gerenciar Movimenta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LinkLabel1: TLinkLabel
    Left = 48
    Top = 104
    Width = 166
    Height = 23
    Caption = 'Tipo de movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBComboBox1: TDBComboBox
    Left = 48
    Top = 133
    Width = 328
    Height = 27
    Style = csDropDownList
    DataField = 'tipo'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Entrada no Estoque'
      'Saida do Estoque')
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 48
    Top = 205
    Width = 328
    Height = 27
    DataField = 'dataHora'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 48
    Top = 278
    Width = 328
    Height = 27
    DataField = 'responsavel'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBMemo1: TDBMemo
    Left = 48
    Top = 351
    Width = 328
    Height = 195
    DataField = 'obsevacoes'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object LinkLabel2: TLinkLabel
    Left = 48
    Top = 176
    Width = 88
    Height = 23
    Caption = 'Data e Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object LinkLabel3: TLinkLabel
    Left = 48
    Top = 249
    Width = 84
    Height = 23
    Caption = 'Respon'#225'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 449
    Top = 104
    Width = 392
    Height = 442
    DataSource = DM.dsMovimentacoes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'TIPO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataHora'
        Title.Caption = 'DATA E HORA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Caption = 'RESPONS'#193'VEL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 220
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 872
    Top = 93
    Width = 562
    Height = 484
    TabOrder = 8
    object Label3: TLabel
      Left = 376
      Top = 19
      Width = 81
      Height = 19
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 39
      Top = 426
      Width = 152
      Height = 19
      Caption = 'Total de Produtos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 49
      Top = 19
      Width = 128
      Height = 19
      Caption = 'Escolha o produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtTotalProdutos: TLabel
      Left = 205
      Top = 426
      Width = 20
      Height = 19
      Caption = '00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit3: TDBEdit
      Left = 376
      Top = 44
      Width = 161
      Height = 27
      DataField = 'qtd'
      DataSource = DM.dsMovProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid2: TDBGrid
      Left = 45
      Top = 96
      Width = 492
      Height = 313
      DataSource = DM.dsMovProdutos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nomeProduto'
          Title.Caption = 'NOME DO PRODUTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtd'
          Title.Caption = 'QUANTIDADE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 46
      Top = 44
      Width = 259
      Height = 27
      DataField = 'idProduto'
      DataSource = DM.dsMovProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'id'
      ListField = 'nome'
      ListSource = DM.dsProdutos
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1433
    Height = 98
    TabOrder = 9
    object Label2: TLabel
      Left = 911
      Top = 37
      Width = 287
      Height = 25
      Caption = 'Produtos da Movimenta'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 449
      Top = 35
      Width = 392
      Height = 43
      DataSource = DM.dsMovimentacoes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
    object DBNavigator2: TDBNavigator
      Left = 1217
      Top = 27
      Width = 192
      Height = 43
      DataSource = DM.dsMovProdutos
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost]
      TabOrder = 1
    end
  end
  object LinkLabel4: TLinkLabel
    Left = 48
    Top = 322
    Width = 93
    Height = 23
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
end
