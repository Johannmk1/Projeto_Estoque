unit UnitCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadMovimentacao = class(TForm)
    Label1: TLabel;
    LinkLabel1: TLinkLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    LinkLabel2: TLinkLabel;
    LinkLabel3: TLinkLabel;
    LinkLabel4: TLinkLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBNavigator2: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    txtTotalProdutos: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadMovimentacao: TformCadMovimentacao;

implementation

{$R *.dfm}

uses UnitDM;

procedure TformCadMovimentacao.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if Button = nbInsert then
    Begin
      DM.tbMovimentacoes.FieldByName('datahora').Value := Now;
    End;

end;

procedure TformCadMovimentacao.FormShow(Sender: TObject);
begin
   DM.calcularTotais;
end;

end.
