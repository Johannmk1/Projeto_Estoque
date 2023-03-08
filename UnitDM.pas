unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    tbProdutos: TFDTable;
    dsProdutos: TDataSource;
    tbMovimentacoes: TFDTable;
    dsMovimentacoes: TDataSource;
    tbMovProdutos: TFDTable;
    dsMovProdutos: TDataSource;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminueEstoque: TFDCommand;
    sqlMovimentacoes: TFDQuery;
    dsSqlMovimentacoes: TDataSource;
    tbProdutosid: TFDAutoIncField;
    tbProdutosnome: TStringField;
    tbProdutosfabricante: TStringField;
    tbProdutosvalidade: TDateField;
    tbProdutosestoqueAtual: TIntegerField;
    tbMovimentacoesid: TFDAutoIncField;
    tbMovimentacoestipo: TStringField;
    tbMovimentacoesdataHora: TDateTimeField;
    tbMovimentacoesresponsavel: TStringField;
    tbMovimentacoesobsevacoes: TMemoField;
    tbMovProdutosid: TFDAutoIncField;
    tbMovProdutosidMovimentacao: TIntegerField;
    tbMovProdutosidProduto: TIntegerField;
    tbMovProdutosqtd: TIntegerField;
    tbMovProdutosnomeProduto: TStringField;
    dsSqlMovProdutos: TDataSource;
    sqlMovProdutos: TFDQuery;
    sqlMovProdutosnomeProduto: TStringField;
    sqlMovProdutosid: TFDAutoIncField;
    sqlMovProdutosidMovimentacao: TIntegerField;
    sqlMovProdutosidProduto: TIntegerField;
    sqlMovProdutosqtd: TIntegerField;
    procedure tbMovProdutosAfterPost(DataSet: TDataSet);
    procedure tbMovProdutosAfterDelete(DataSet: TDataSet);
    procedure calcularTotais;
    procedure tbMovimentacoesAfterScroll(DataSet: TDataSet);
    procedure tbMovProdutosBeforeDelete(DataSet: TDataSet);
    procedure tbMovimentacoesBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnitCadProduto, UnitCadMovimentacao;

{$R *.dfm}

procedure TDM.calcularTotais;

 var totais : integer;

begin
   if tbMovProdutos.State in [dsBrowse] then
      begin

        tbMovProdutos.First;

        while not tbMovProdutos.Eof do
          begin
              totais := totais + tbMovProdutos.FieldByName('qtd').Value;

              tbMovProdutos.Next;
          end;

      formCadMovimentacao.txtTotalProdutos.Caption :=  intToStr(totais);
      end;
end;

procedure TDM.tbMovimentacoesAfterScroll(DataSet: TDataSet);
begin
   calcularTotais;
end;

procedure TDM.tbMovimentacoesBeforeDelete(DataSet: TDataSet);
begin
  if tbMovProdutos.RecordCount > 0 then
   begin
     ShowMessage('Existem produtos nessa movimentação. Exclua-os primeiro!');
     abort;
   end;

end;

procedure TDM.tbMovProdutosAfterDelete(DataSet: TDataSet);
begin
   calcularTotais;

   if (tbMovimentacoes.FieldByName ('tipo').Value = 'Entrada no Estoque') then
    begin
      sqlDiminueEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
      sqlDiminueEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
      sqlDiminueEstoque.Execute();
    end;

if (tbMovimentacoes.FieldByName ('tipo').Value = 'Saida do Estoque') then
    begin
      sqlAumentaEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
      sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
      sqlAumentaEstoque.Execute();
    end;
end;

procedure TDM.tbMovProdutosAfterPost(DataSet: TDataSet);
begin
   calcularTotais;

if (tbMovimentacoes.FieldByName ('tipo').Value = 'Entrada no Estoque') then
    begin
      sqlAumentaEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
      sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
      sqlAumentaEstoque.Execute();
    end;

if (tbMovimentacoes.FieldByName ('tipo').Value = 'Saida do Estoque') then
    begin
      sqlDiminueEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
      sqlDiminueEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
      sqlDiminueEstoque.Execute();
    end;  
end;

procedure TDM.tbMovProdutosBeforeDelete(DataSet: TDataSet);
begin
if (tbMovimentacoes.FieldByName ('tipo').Value = 'Entrada no Estoque') then
    begin
      sqlDiminueEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
      sqlDiminueEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
      sqlDiminueEstoque.Execute();
    end;

if (tbMovimentacoes.FieldByName ('tipo').Value = 'Saida do Estoque') then
    begin
      sqlAumentaEstoque.ParamByName('pId').Value := tbMovProdutos.FieldByName('idProduto').Value;
      sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
      sqlAumentaEstoque.Execute();
    end;
end;

end.
