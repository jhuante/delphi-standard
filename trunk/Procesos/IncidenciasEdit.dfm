inherited frmIncidenciasEdit: TfrmIncidenciasEdit
  Caption = 'Incidencia'
  ClientHeight = 224
  ClientWidth = 666
  ExplicitWidth = 672
  ExplicitHeight = 252
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 666
    Height = 183
    ExplicitWidth = 666
    ExplicitHeight = 183
    ClientRectBottom = 181
    ClientRectRight = 664
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 662
      ExplicitHeight = 153
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Instruccion'
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 39
        Height = 13
        Caption = 'Persona'
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 100
        Height = 13
        Caption = 'Persona Relacionada'
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 16
        Top = 32
        DataBinding.DataField = 'Instruccion'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 0
        Width = 630
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 16
        Top = 72
        DataBinding.DataField = 'Persona'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 1
        Width = 630
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 16
        Top = 112
        DataBinding.DataField = 'PersonaRelacionada'
        DataBinding.DataSource = DataSource
        Properties.ListColumns = <>
        TabOrder = 2
        Width = 630
      end
    end
  end
  inherited pmlMain: TPanel
    Top = 183
    Width = 666
    ExplicitTop = 183
    ExplicitWidth = 666
    inherited btnOk: TButton
      Left = 503
      ExplicitLeft = 503
    end
    inherited btnCancel: TButton
      Left = 584
      ExplicitLeft = 584
    end
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end
