program Estoque;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {formPrincipal},
  UnitCadProduto in 'UnitCadProduto.pas' {formCadProdutos},
  UnitCadMovimentacao in 'UnitCadMovimentacao.pas' {formCadMovimentacao},
  UnitConsMovimentacao in 'UnitConsMovimentacao.pas' {FormConsMovimentacao},
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadProdutos, formCadProdutos);
  Application.CreateForm(TformCadMovimentacao, formCadMovimentacao);
  Application.CreateForm(TFormConsMovimentacao, FormConsMovimentacao);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
