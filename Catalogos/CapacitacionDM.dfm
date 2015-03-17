inherited dmCapacitacion: TdmCapacitacion
  OldCreateOrder = True
  Width = 507
  inherited adodsMaster: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT IdBateriaCapacitacion, IdPuesto, Identificador, Descripci' +
      'on, Ponderacion FROM BateriaCapacitacion'
    Left = 88
    Top = 64
    object adodsMasterIdBateriaCapacitacion: TIntegerField
      FieldName = 'IdBateriaCapacitacion'
      Visible = False
    end
    object adodsMasterIdPuesto: TIntegerField
      FieldName = 'IdPuesto'
      Visible = False
    end
    object adodsMasterIdentificador: TStringField
      FieldName = 'Identificador'
    end
    object adodsMasterDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsMasterPonderacion: TIntegerField
      FieldName = 'Ponderacion'
    end
  end
  object dsMaster: TDataSource
    DataSet = adodsMaster
    Left = 184
    Top = 64
  end
  object adodsBateriaCapacitacionCursos: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdBateriaCapacitacionCurso, IdBateriaCapacitacion, Identi' +
      'ficador, Descripcion, ValorCurricular FROM BateriaCapacitacionCu' +
      'rsos WHERE IdBateriaCapacitacion = :IdBateriaCapacitacion'
    DataSource = dsMaster
    MasterFields = 'IdBateriaCapacitacion'
    Parameters = <
      item
        Name = 'IdBateriaCapacitacion'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 88
    Top = 152
    object adodsBateriaCapacitacionCursosIdBateriaCapacitacionCurso: TIntegerField
      FieldName = 'IdBateriaCapacitacionCurso'
      Visible = False
    end
    object adodsBateriaCapacitacionCursosIdBateriaCapacitacion: TIntegerField
      FieldName = 'IdBateriaCapacitacion'
      Visible = False
    end
    object adodsBateriaCapacitacionCursosIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsBateriaCapacitacionCursosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 2000
    end
    object adodsBateriaCapacitacionCursosValorCurricular: TFloatField
      FieldName = 'ValorCurricular'
    end
  end
  object adodsBateriaCapacitacionCursosTemas: TADODataSet
    Connection = _dmConection.ADOConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT IdBateriaCapacitacionCursoTema, IdBateriaCapacitacionCurs' +
      'o, Identificador, Descripcion, Ponderacion FROM BateriaCapacitac' +
      'ionCursosTemas WHERE IdBateriaCapacitacionCurso = :IdBateriaCapa' +
      'citacionCurso'
    DataSource = dsBateriaCapacitacionCursos
    MasterFields = 'IdBateriaCapacitacionCurso'
    Parameters = <
      item
        Name = 'IdBateriaCapacitacionCurso'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 88
    Top = 248
    object adodsBateriaCapacitacionCursosTemasIdBateriaCapacitacionCursoTema: TIntegerField
      FieldName = 'IdBateriaCapacitacionCursoTema'
      Visible = False
    end
    object adodsBateriaCapacitacionCursosTemasIdBateriaCapacitacionCurso: TIntegerField
      FieldName = 'IdBateriaCapacitacionCurso'
      Visible = False
    end
    object adodsBateriaCapacitacionCursosTemasIdentificador: TStringField
      FieldName = 'Identificador'
      Size = 10
    end
    object adodsBateriaCapacitacionCursosTemasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object adodsBateriaCapacitacionCursosTemasPonderacion: TIntegerField
      FieldName = 'Ponderacion'
    end
  end
  object dsBateriaCapacitacionCursos: TDataSource
    DataSet = adodsBateriaCapacitacionCursos
    Left = 256
    Top = 152
  end
end
