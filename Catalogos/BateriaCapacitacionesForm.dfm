inherited frmBateriasCapacitacion: TfrmBateriasCapacitacion
  BorderStyle = bsToolWindow
  Caption = 'Bateria de Capacitaciones'
  ClientHeight = 433
  ClientWidth = 645
  OnCreate = FormCreate
  ExplicitWidth = 651
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited splDetail3: TSplitter
    Top = 387
    Width = 645
    Align = alTop
    ExplicitTop = 431
    ExplicitWidth = 645
  end
  inherited splDetail1: TSplitter
    Top = 131
    Width = 645
    Align = alTop
    ExplicitLeft = -8
    ExplicitTop = 122
    ExplicitWidth = 645
  end
  inherited splDetail2: TSplitter
    Top = 384
    Width = 645
    Align = alTop
    ExplicitTop = 278
    ExplicitWidth = 645
  end
  inherited pnlMaster: TPanel
    Width = 645
    Height = 100
    Align = alTop
    ExplicitWidth = 645
    ExplicitHeight = 100
    inherited cxGrid: TcxGrid
      Width = 645
      Height = 100
      ExplicitWidth = 645
      ExplicitHeight = 100
      inherited tvMaster: TcxGridDBTableView
        object tvMasterIdBateriaCapacitacion: TcxGridDBColumn
          DataBinding.FieldName = 'IdBateriaCapacitacion'
          Visible = False
        end
        object tvMasterIdPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'IdPuesto'
          Visible = False
        end
        object tvMasterPuesto: TcxGridDBColumn
          DataBinding.FieldName = 'Puesto'
        end
        object tvMasterIdentificador: TcxGridDBColumn
          DataBinding.FieldName = 'Identificador'
        end
        object tvMasterDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
        end
        object tvMasterPonderacion: TcxGridDBColumn
          DataBinding.FieldName = 'Ponderacion'
        end
      end
    end
  end
  inherited pnlDetail3: TPanel
    Top = 390
    Width = 645
    Height = 43
    Align = alClient
    ExplicitTop = 440
    ExplicitWidth = 645
    ExplicitHeight = 24
  end
  inherited pnlDetail2: TPanel
    Top = 390
    Width = 645
    Height = 43
    Align = alClient
    ExplicitTop = 387
    ExplicitWidth = 645
    ExplicitHeight = 250
  end
  inherited pnlDetail1: TPanel
    Top = 134
    Width = 645
    Height = 250
    Align = alTop
    ExplicitTop = 134
    ExplicitWidth = 645
    ExplicitHeight = 250
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
end
