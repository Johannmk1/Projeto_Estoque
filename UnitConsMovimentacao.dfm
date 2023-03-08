object FormConsMovimentacao: TFormConsMovimentacao
  Left = 0
  Top = 0
  Caption = 'Consulta de Movimenta'#231#245'es'
  ClientHeight = 614
  ClientWidth = 836
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
  object Label4: TLabel
    Left = 24
    Top = 584
    Width = 205
    Height = 19
    Caption = 'Total de Movimenta'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 235
    Top = 584
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 836
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    object Label1: TLabel
      Left = 24
      Top = 28
      Width = 271
      Height = 25
      Caption = 'Consultar Movimenta'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 836
    Height = 80
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 15
      Width = 159
      Height = 19
      Caption = 'Digite a data inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 232
      Top = 15
      Width = 147
      Height = 19
      Caption = 'Digite a data final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtDataInicial: TMaskEdit
      Left = 24
      Top = 40
      Width = 169
      Height = 27
      EditMask = '##/##/####;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object txtDataFinal: TMaskEdit
      Left = 232
      Top = 40
      Width = 169
      Height = 27
      EditMask = '##/##/####;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object btConsultar: TButton
      Left = 432
      Top = 16
      Width = 193
      Height = 49
      Caption = 'Consultar Movimenta'#231#227'o'
      TabOrder = 2
      OnClick = btConsultarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 187
    Width = 377
    Height = 366
    DataSource = DM.dsSqlMovimentacoes
    TabOrder = 2
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
        Width = 117
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
        Width = 114
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
        Width = 98
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 432
    Top = 187
    Width = 377
    Height = 366
    DataSource = DM.dsSqlMovProdutos
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomeProduto'
        Title.Caption = 'PRODUTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 205
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
        Width = 132
        Visible = True
      end>
  end
end
