inherited frmPersonaRolesEdit: TfrmPersonaRolesEdit
  Caption = 'Rol Asignado'
  ClientHeight = 414
  ClientWidth = 719
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 725
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 719
    Height = 373
    Properties.ActivePage = tsDocumentosFacturar
    ExplicitWidth = 719
    ExplicitHeight = 373
    ClientRectBottom = 371
    ClientRectRight = 717
    inherited tsGeneral: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 715
      ExplicitHeight = 343
      object pnlRol: TPanel
        Left = 0
        Top = 0
        Width = 715
        Height = 177
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 8
          Width = 15
          Height = 13
          Caption = 'Rol'
        end
        object Label2: TLabel
          Left = 16
          Top = 48
          Width = 97
          Height = 13
          Caption = 'Persona relacionada'
        end
        object Label3: TLabel
          Left = 16
          Top = 88
          Width = 36
          Height = 13
          Caption = 'Estatus'
        end
        object Label4: TLabel
          Left = 256
          Top = 88
          Width = 26
          Height = 13
          Caption = 'Clase'
        end
        object Label5: TLabel
          Left = 16
          Top = 136
          Width = 82
          Height = 13
          Caption = 'Fecha de ingreso'
          FocusControl = cxDBDateEdit1
        end
        object Label6: TLabel
          Left = 162
          Top = 136
          Width = 68
          Height = 13
          Caption = 'Fecha de baja'
          FocusControl = cxDBDateEdit2
        end
        object Label9: TLabel
          Left = 464
          Top = 134
          Width = 89
          Height = 13
          Caption = 'Porcentaje Calculo'
          FocusControl = cxDBTextEdit2
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 15
          Top = 23
          DataBinding.DataField = 'Rol'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 0
          Width = 210
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 15
          Top = 63
          DataBinding.DataField = 'PersonaRelacionada'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 1
          Width = 522
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 15
          Top = 103
          DataBinding.DataField = 'RolEstatus'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 210
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 255
          Top = 103
          DataBinding.DataField = 'RolClase'
          DataBinding.DataSource = DataSource
          Properties.ListColumns = <>
          TabOrder = 3
          Width = 210
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 16
          Top = 151
          DataBinding.DataField = 'FechaIngreso'
          DataBinding.DataSource = DataSource
          TabOrder = 4
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 161
          Top = 151
          DataBinding.DataField = 'FechaBaja'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          Width = 121
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 312
          Top = 152
          Caption = 'Calcular'
          DataBinding.DataField = 'Calcular'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 464
          Top = 150
          DataBinding.DataField = 'PorcentajeCalculo'
          DataBinding.DataSource = DataSource
          TabOrder = 7
          Width = 121
        end
      end
      object pnlProveedor: TPanel
        Left = 0
        Top = 177
        Width = 715
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object dbchkFacturar: TcxDBCheckBox
          Left = 16
          Top = 3
          Caption = 'Facturar'
          DataBinding.DataField = 'Facturar'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 121
        end
      end
      object pnlEmpleado: TPanel
        Left = 0
        Top = 203
        Width = 715
        Height = 86
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
        object Label7: TLabel
          Left = 16
          Top = 3
          Width = 31
          Height = 13
          Caption = 'N.S.S.'
          FocusControl = cxDBTextEdit1
        end
        object Label8: TLabel
          Left = 16
          Top = 43
          Width = 119
          Height = 13
          Caption = 'Fecha de alta al I.M.S.S.'
          FocusControl = cxDBDateEdit3
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 19
          DataBinding.DataField = 'NSS'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 169
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 16
          Top = 59
          DataBinding.DataField = 'FechaAltaIMSS'
          DataBinding.DataSource = DataSource
          TabOrder = 1
          Width = 121
        end
      end
      object pnlOutsourcing: TPanel
        Left = 0
        Top = 289
        Width = 715
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        object Label10: TLabel
          Left = 16
          Top = 4
          Width = 126
          Height = 13
          Caption = 'Registro Patronal I.M.S.S.'
          FocusControl = cxDBTextEdit3
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 20
          DataBinding.DataField = 'RegistroPatronalIMSS'
          DataBinding.DataSource = DataSource
          TabOrder = 0
          Width = 126
        end
      end
    end
    object tsKardex: TcxTabSheet
      Caption = 'Kardex'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tsCuentas: TcxTabSheet
      Caption = 'Cuentas Contables'
      ImageIndex = 2
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tsEsquemaPago: TcxTabSheet
      Caption = 'Esquema de Pago'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tsDocumentosFacturar: TcxTabSheet
      Caption = 'Archivos para Facturar'
      ImageIndex = 1
      TabVisible = False
    end
    object tsCuentasBancarias: TcxTabSheet
      Caption = 'Cuentas Bancarias'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tsExpedienteDigital: TcxTabSheet
      Caption = 'Expediente Digital'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  inherited pmlMain: TPanel
    Top = 373
    Width = 719
    ExplicitTop = 373
    ExplicitWidth = 719
    inherited btnOk: TButton
      Left = 556
      ExplicitLeft = 556
    end
    inherited btnCancel: TButton
      Left = 637
      ExplicitLeft = 637
    end
  end
  inherited DataSource: TDataSource
    DataSet = dmPersona.adodsPersonaRoles
  end
  inherited cxImageList: TcxImageList
    FormatVersion = 1
  end
end