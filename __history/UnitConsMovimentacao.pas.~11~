unit UnitConsMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormConsMovimentacao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    txtDataInicial: TMaskEdit;
    Label2: TLabel;
    txtDataFinal: TMaskEdit;
    Label3: TLabel;
    btConsultar: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    lblTotal: TLabel;
    procedure btConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsMovimentacao: TFormConsMovimentacao;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormConsMovimentacao.btConsultarClick(Sender: TObject);
begin
   DM.sqlMovimentacoes.Close;
   DM.sqlMovimentacoes.SQL.Clear;
   DM.sqlMovimentacoes.SQL.Text := 'SELECT * FROM movimentacoes WHERE Date(dataHora) BETWEEN :pDataInicial AND :pDataFinal';
   DM.sqlMovimentacoes.ParamByName('pDataInicial').Value := FormatDateTime('YYYY-MM-DD', StrToDate(txtDataInicial.Text));
   DM.sqlMovimentacoes.ParamByName('pDataFinal').Value := FormatDateTime('YYYY-MM-DD', StrToDate(txtDataFinal.Text));
   DM.sqlMovimentacoes.Open;

   lblTotal.Caption := IntToStr(DM.sqlMovimentacoes.RecordCount);
end;

procedure TFormConsMovimentacao.FormShow(Sender: TObject);
begin
  Dm.sqlMovimentacoes.Refresh;
  Dm.sqlMovProdutos.Refresh;
  lblTotal.Caption := IntToStr(DM.sqlMovimentacoes.RecordCount);
end;

end.
