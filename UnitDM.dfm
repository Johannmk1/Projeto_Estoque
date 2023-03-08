object DM: TDM
  OldCreateOrder = False
  Height = 697
  Width = 1006
  object conexao: TFDConnection
    Params.Strings = (
      'Database=estoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 112
  end
  object tbProdutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'estoque.produtos'
    TableName = 'estoque.produtos'
    Left = 208
    Top = 112
    object tbProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbProdutosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbProdutosfabricante: TStringField
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Required = True
      Size = 30
    end
    object tbProdutosvalidade: TDateField
      FieldName = 'validade'
      Origin = 'validade'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbProdutosestoqueAtual: TIntegerField
      FieldName = 'estoqueAtual'
      Origin = 'estoqueAtual'
    end
  end
  object dsProdutos: TDataSource
    DataSet = tbProdutos
    Left = 208
    Top = 208
  end
  object tbMovimentacoes: TFDTable
    Active = True
    BeforeDelete = tbMovimentacoesBeforeDelete
    AfterScroll = tbMovimentacoesAfterScroll
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'estoque.movimentacoes'
    TableName = 'estoque.movimentacoes'
    Left = 304
    Top = 112
    object tbMovimentacoesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbMovimentacoestipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
    end
    object tbMovimentacoesdataHora: TDateTimeField
      FieldName = 'dataHora'
      Origin = 'dataHora'
      Required = True
    end
    object tbMovimentacoesresponsavel: TStringField
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Required = True
      Size = 30
    end
    object tbMovimentacoesobsevacoes: TMemoField
      FieldName = 'obsevacoes'
      Origin = 'obsevacoes'
      BlobType = ftMemo
    end
  end
  object dsMovimentacoes: TDataSource
    DataSet = tbMovimentacoes
    Left = 304
    Top = 208
  end
  object tbMovProdutos: TFDTable
    Active = True
    AfterPost = tbMovProdutosAfterPost
    BeforeDelete = tbMovProdutosBeforeDelete
    AfterDelete = tbMovProdutosAfterDelete
    IndexName = 'idMovimentacao'
    MasterSource = dsMovimentacoes
    MasterFields = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'estoque.movimentacoes_produtos'
    TableName = 'estoque.movimentacoes_produtos'
    Left = 400
    Top = 112
    object tbMovProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbMovProdutosidMovimentacao: TIntegerField
      FieldName = 'idMovimentacao'
      Origin = 'idMovimentacao'
      Required = True
    end
    object tbMovProdutosidProduto: TIntegerField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object tbMovProdutosqtd: TIntegerField
      FieldName = 'qtd'
      Origin = 'qtd'
      Required = True
    end
    object tbMovProdutosnomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeProduto'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
  end
  object dsMovProdutos: TDataSource
    DataSet = tbMovProdutos
    Left = 400
    Top = 208
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = conexao
    CommandText.Strings = (
      
        'UPDATE produtos SET estoqueAtual = estoqueAtual  + :pQtd WHERE i' +
        'd = :pId')
    ParamData = <
      item
        Name = 'pQtd'
        ParamType = ptInput
      end
      item
        Name = 'pId'
        ParamType = ptInput
      end>
    Left = 728
    Top = 160
  end
  object sqlDiminueEstoque: TFDCommand
    Connection = conexao
    CommandText.Strings = (
      
        'UPDATE produtos SET estoqueAtual = estoqueAtual  - :pQtd WHERE i' +
        'd = :pId')
    ParamData = <
      item
        Name = 'pQtd'
        ParamType = ptInput
      end
      item
        Name = 'pId'
        ParamType = ptInput
      end>
    Left = 632
    Top = 160
  end
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM movimentacoes')
    Left = 200
    Top = 352
    ParamData = <
      item
        Name = 'pDataInicial'
      end
      item
        Name = 'pDataFinal'
      end>
  end
  object dsSqlMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 200
    Top = 448
  end
  object dsSqlMovProdutos: TDataSource
    DataSet = sqlMovProdutos
    Left = 344
    Top = 448
  end
  object sqlMovProdutos: TFDQuery
    Active = True
    IndexFieldNames = 'idMovimentacao'
    MasterSource = dsSqlMovimentacoes
    MasterFields = 'id'
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM movimentacoes_produtos')
    Left = 344
    Top = 352
    object sqlMovProdutosnomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeProduto'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'idProduto'
      Size = 50
      Lookup = True
    end
    object sqlMovProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sqlMovProdutosidMovimentacao: TIntegerField
      FieldName = 'idMovimentacao'
      Origin = 'idMovimentacao'
      Required = True
    end
    object sqlMovProdutosidProduto: TIntegerField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object sqlMovProdutosqtd: TIntegerField
      FieldName = 'qtd'
      Origin = 'qtd'
      Required = True
    end
  end
end
