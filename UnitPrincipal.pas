unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    Movimentaes1: TMenuItem;
    Gerenciarmovimentaes1: TMenuItem;
    ConsultarMovimentaes1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure CadastrodeProdutos1Click(Sender: TObject);
    procedure Gerenciarmovimentaes1Click(Sender: TObject);
    procedure ConsultarMovimentaes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses UnitCadProduto, UnitCadMovimentacao, UnitConsMovimentacao;

procedure TformPrincipal.CadastrodeProdutos1Click(Sender: TObject);
begin
    formCadProdutos.ShowModal;
end;

procedure TformPrincipal.ConsultarMovimentaes1Click(Sender: TObject);
begin
    formConsMovimentacao.ShowModal;
end;

procedure TformPrincipal.Gerenciarmovimentaes1Click(Sender: TObject);
begin
    formCadMovimentacao.ShowModal;
end;

procedure TformPrincipal.Sair1Click(Sender: TObject);
begin
   Application.Terminate;
end;

end.
