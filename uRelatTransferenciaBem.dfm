object frmRelatTranferenciaBem: TfrmRelatTranferenciaBem
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'TR - Termo de Respons'#225'bilidade'
  ClientHeight = 502
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 169
    Top = 37
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object btnVisualizar: TBitBtn
    Left = 474
    Top = 448
    Width = 91
    Height = 25
    Cursor = crHandPoint
    Caption = 'Visualizar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 9
    OnClick = btnVisualizarClick
  end
  object btnFechar: TBitBtn
    Left = 576
    Top = 448
    Width = 91
    Height = 25
    Cursor = crHandPoint
    Caption = 'Fechar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 10
    OnClick = btnFecharClick
  end
  object cbOrgao: TCheckBox
    Left = 56
    Top = 96
    Width = 97
    Height = 17
    Caption = 'Org'#227'o/Empresa:'
    TabOrder = 2
    OnClick = cbOrgaoClick
  end
  object cbUnidade: TCheckBox
    Left = 56
    Top = 128
    Width = 105
    Height = 17
    Caption = 'Unidades:'
    Enabled = False
    TabOrder = 4
  end
  object dbLocal: TDBLookupComboBox
    Left = 166
    Top = 94
    Width = 438
    Height = 21
    KeyField = 'localId'
    ListField = 'localId;titulo'
    ListFieldIndex = 1
    ListSource = dsLocal
    TabOrder = 3
  end
  object dblSubLocal: TDBLookupComboBox
    Left = 166
    Top = 124
    Width = 438
    Height = 21
    Enabled = False
    KeyField = 'localId'
    ListField = 'localId;titulo'
    ListFieldIndex = 1
    ListSource = dsAuxLocal
    TabOrder = 5
  end
  object edtNome: TLabeledEdit
    Left = 166
    Top = 176
    Width = 224
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome:'
    TabOrder = 7
  end
  object edtMunicipio: TLabeledEdit
    Left = 401
    Top = 176
    Width = 203
    Height = 21
    EditLabel.Width = 47
    EditLabel.Height = 13
    EditLabel.Caption = 'Munic'#237'pio:'
    TabOrder = 8
  end
  object edtMatricula: TLabeledEdit
    Left = 56
    Top = 176
    Width = 97
    Height = 21
    EditLabel.Width = 47
    EditLabel.Height = 13
    EditLabel.Caption = 'Matricula:'
    TabOrder = 6
  end
  object edtNTranferencia: TLabeledEdit
    Left = 56
    Top = 54
    Width = 97
    Height = 21
    EditLabel.Width = 32
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#186' TR:'
    TabOrder = 0
  end
  object edtData: TDateTimePicker
    Left = 169
    Top = 54
    Width = 91
    Height = 21
    Date = 40691.646961932870000000
    Time = 40691.646961932870000000
    TabOrder = 1
  end
  object rvdTrBens: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DisableDataSource = False
    RestoreDataSet = False
    DataSet = cdsBens
    Left = 336
    Top = 252
  end
  object rvdTrSubLocal: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DisableDataSource = False
    RestoreDataSet = False
    DataSet = sqlSubLocal
    Left = 144
    Top = 248
  end
  object dpsLocalAux: TDataSetProvider
    DataSet = dm.sqlSubLocal
    ResolveToDataSet = True
    Options = [poReadOnly, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 432
  end
  object dsAuxLocal: TDataSource
    DataSet = cdsAuxLocal
    Left = 146
    Top = 312
  end
  object cdsAuxLocal: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from local order by localid'
    FieldDefs = <
      item
        Name = 'localId'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'titulo'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'vLocalId'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'pessoaId'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'vLocalId'
    MasterFields = 'localId'
    MasterSource = dsLocal
    Params = <>
    ProviderName = 'dpsLocalAux'
    StoreDefs = True
    Left = 144
    Top = 376
  end
  object dspLocal: TDataSetProvider
    DataSet = dm.sqlLocal
    ResolveToDataSet = True
    Options = [poReadOnly, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 432
  end
  object cdsLocal: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from local where vLocalId = 0 order by localId'
    Params = <>
    ProviderName = 'dspLocal'
    Left = 56
    Top = 376
  end
  object dsLocal: TDataSource
    DataSet = cdsLocal
    Left = 56
    Top = 312
  end
  object cdsBens: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from bem'
    Params = <>
    ProviderName = 'dpsBens'
    Left = 337
    Top = 314
    object cdsBensbemId: TAutoIncField
      FieldName = 'bemId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cdsBensidenficacao: TStringField
      FieldName = 'idenficacao'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsBensdescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object cdsBensgrupoId: TStringField
      FieldName = 'grupoId'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsBensestadoId: TIntegerField
      FieldName = 'estadoId'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBenslocalId: TStringField
      FieldName = 'localId'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsBensgestaoId: TIntegerField
      FieldName = 'gestaoId'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBensvalor: TBCDField
      FieldName = 'valor'
      ProviderFlags = [pfInUpdate]
      currency = True
      Precision = 19
    end
    object cdsBenstipoIdentificacao: TIntegerField
      FieldName = 'tipoIdentificacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBenssubgrupoId: TStringField
      FieldName = 'subgrupoId'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsBenssubLocalId: TStringField
      FieldName = 'subLocalId'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsBenstipoAquisicao: TIntegerField
      FieldName = 'tipoAquisicao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBensquantidade: TFloatField
      FieldName = 'quantidade'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dpsBens: TDataSetProvider
    DataSet = dm.sqlBem
    ResolveToDataSet = True
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 417
    Top = 314
  end
  object sqlLocal: TADOQuery
    Connection = dm.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from local where vLocalId = 0')
    Left = 528
    Top = 272
    object sqlLocallocalId: TStringField
      FieldName = 'localId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object sqlLocaltitulo: TStringField
      FieldName = 'titulo'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sqlLocalvLocalId: TStringField
      FieldName = 'vLocalId'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlLocalpessoaId: TIntegerField
      FieldName = 'pessoaId'
      ProviderFlags = [pfInUpdate]
    end
  end
  object sqlSubLocal: TADOQuery
    Connection = dm.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from local where vLocalId  <> 0')
    Left = 600
    Top = 272
    object sqlSubLocallocalId: TStringField
      FieldName = 'localId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object sqlSubLocaltitulo: TStringField
      FieldName = 'titulo'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sqlSubLocalvLocalId: TStringField
      FieldName = 'vLocalId'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlSubLocalpessoaId: TIntegerField
      FieldName = 'pessoaId'
      ProviderFlags = [pfInUpdate]
    end
  end
end