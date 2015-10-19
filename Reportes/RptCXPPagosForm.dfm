inherited frmRptCXPPagos: TfrmRptCXPPagos
  Caption = 'frmRptCXPPagos'
  ClientWidth = 990
  ExplicitWidth = 990
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Width = 990
  end
  inherited splDetail1: TSplitter
    Width = 990
  end
  inherited splDetail2: TSplitter
    Width = 990
  end
  inherited pnlMaster: TPanel
    Width = 990
    inherited cxGrid: TcxGrid
      Width = 990
      inherited tvMaster: TcxGridDBTableView
        OptionsView.GroupByBox = True
        object tvMasterIdCuentaXPagarPago: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaXPagarPago'
          Visible = False
        end
        object tvMasterEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
        end
        object tvMasterPeriodo: TcxGridDBColumn
          DataBinding.FieldName = 'Periodo'
          Visible = False
        end
        object tvMasterPagador: TcxGridDBColumn
          DataBinding.FieldName = 'Pagador'
          Visible = False
          GroupIndex = 0
        end
        object tvMasterCuentaBancariaPagador: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaBancariaPagador'
        end
        object tvMasterConceptoCXP: TcxGridDBColumn
          DataBinding.FieldName = 'ConceptoCXP'
          Visible = False
          GroupIndex = 1
          Width = 304
        end
        object tvMasterConceptoPago: TcxGridDBColumn
          DataBinding.FieldName = 'ConceptoPago'
          Width = 304
        end
        object tvMasterCobrador: TcxGridDBColumn
          DataBinding.FieldName = 'Cobrador'
        end
        object tvMasterCuentaBancariaCobrador: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaBancariaCobrador'
        end
        object tvMasterFechaProgramada: TcxGridDBColumn
          DataBinding.FieldName = 'FechaProgramada'
        end
        object tvMasterMontoProgramado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoProgramado'
        end
        object tvMasterFechaAutorizacion: TcxGridDBColumn
          DataBinding.FieldName = 'FechaAutorizacion'
        end
        object tvMasterMontoAutorizado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoAutorizado'
        end
        object tvMasterFechaPago: TcxGridDBColumn
          DataBinding.FieldName = 'FechaPago'
        end
        object tvMasterMontoPagado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoPagado'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Width = 990
  end
  inherited pnlDetail2: TPanel
    Width = 990
  end
  inherited pnlDetail1: TPanel
    Width = 990
  end
  inherited pnlClose: TPanel
    Width = 990
    inherited btnClose: TButton
      Left = 905
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
    inherited dxbFilter: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxedtPeriodo'
        end
        item
          Visible = True
          ItemName = 'dxbtnSearch'
        end>
      Visible = True
    end
    object cxedtPeriodo: TcxBarEditItem
      Caption = 'Periodo'
      Category = 0
      Hint = 'Periodo'
      Visible = ivAlways
      ShowCaption = True
      Width = 303
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.GridMode = True
      Properties.KeyFieldNames = 'IdPeriodo'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsPeriodos
    end
    object cxedtClase: TcxBarEditItem
      Caption = 'Clase'
      Category = 0
      Hint = 'Clase'
      Visible = ivNever
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.Items.Strings = (
        'Ambos'
        'Real'
        'Virtual')
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    inherited dxcplGrid: TdxGridReportLink
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
  object dsPeriodos: TDataSource
    AutoEdit = False
    Left = 296
    Top = 95
  end
end