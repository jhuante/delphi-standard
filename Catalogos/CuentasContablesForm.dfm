inherited frmCuentasContables: TfrmCuentasContables
  Caption = 'frmCuentasContables'
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMaster: TPanel
    ExplicitWidth = 651
    ExplicitHeight = 253
    inherited cxGrid: TcxGrid
      ExplicitWidth = 651
      ExplicitHeight = 253
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdCuentaContable: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaContable'
          Visible = False
        end
        object tvMasterIdPersona: TcxGridDBColumn
          DataBinding.FieldName = 'IdPersona'
          Visible = False
        end
        object tvMasterPersona: TcxGridDBColumn
          DataBinding.FieldName = 'Persona'
        end
        object tvMasterCuentaContable: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaContable'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterNaturaleza: TcxGridDBColumn
          DataBinding.FieldName = 'Naturaleza'
        end
        object tvMasterCodigoAgrupaSAT: TcxGridDBColumn
          DataBinding.FieldName = 'CodigoAgrupaSAT'
        end
        object tvMasterIdCuentaPadre: TcxGridDBColumn
          DataBinding.FieldName = 'IdCuentaPadre'
          Visible = False
        end
        object tvMasterCuentaPadre: TcxGridDBColumn
          DataBinding.FieldName = 'CuentaPadre'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    ExplicitTop = 375
    ExplicitWidth = 651
  end
  inherited pnlDetail2: TPanel
    ExplicitTop = 331
    ExplicitWidth = 651
  end
  inherited pnlDetail1: TPanel
    ExplicitTop = 287
    ExplicitWidth = 651
  end
  inherited pnlClose: TPanel
    inherited btnClose: TButton
      ExplicitLeft = 566
    end
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      31
      0)
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
end
