object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Controle de Estoque'
  ClientHeight = 671
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 966
    Height = 671
    Align = alClient
    TabOrder = 0
    OnClick = Button1Click
    ExplicitWidth = 969
    ExplicitHeight = 673
  end
  object MainMenu1: TMainMenu
    Left = 392
    Top = 192
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object CadastrodeProdutos1: TMenuItem
        Caption = 'Cadastro de Produtos'
        OnClick = CadastrodeProdutos1Click
      end
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object Gerenciarmovimentaes1: TMenuItem
        Caption = 'Gerenciar movimenta'#231#245'es'
        OnClick = Gerenciarmovimentaes1Click
      end
      object ConsultarMovimentaes1: TMenuItem
        Caption = 'Consultar Movimenta'#231#245'es'
        OnClick = ConsultarMovimentaes1Click
      end
    end
  end
end
