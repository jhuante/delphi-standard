unit ConfiguracionDM;

interface

uses
  System.SysUtils, System.Classes, _StandarDMod, Data.DB, Data.Win.ADODB,
  System.Actions, Vcl.ActnList;

type
  TdmConfiguracion = class(T_dmStandar)
    adoqGetIdPeriodoActual: TADOQuery;
    adoqGetIdPeriodoActualValor: TIntegerField;
    adodsMasterIdPais: TIntegerField;
    adodsMasterIdMoneda: TIntegerField;
    adodsMasterIdMovimientoTipoNomina: TIntegerField;
    adodsMasterIdMovimientoTipoRetencion: TIntegerField;
    adodsMasterIdMovimientoTipoPrestamo: TIntegerField;
    adodsMasterIdMetodoPagoCuentasXPagar: TIntegerField;
    adodsMasterIdMetodoPagoFactura: TIntegerField;
    adodsPaises: TADODataSet;
    adodsMonedas: TADODataSet;
    adodsMovimientosTipo1: TADODataSet;
    adodsMovimientosTipo2: TADODataSet;
    adodsMovimientosTipo3: TADODataSet;
    adodsMetodosPago1: TADODataSet;
    adodsMetodosPago2: TADODataSet;
    adodsMasterPais: TStringField;
    adodsMasterMoneda: TStringField;
    adodsMasterMovimientoTipoNomina: TStringField;
    adodsMasterMovimientoTipoRetencion: TStringField;
    adodsMasterMovimientoTipoPrestamo: TStringField;
    adodsMasterMetodoPagoCuentasXPagar: TStringField;
    adodsMasterMetodoPagoFactura: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    function GetIdPeridoActual: Integer;
    { Private declarations }
  public
    { Public declarations }
    property IdPeridoActual: Integer read GetIdPeridoActual;
  end;

var
  dmConfiguracion: TdmConfiguracion;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ConfiguracionesForm;

{$R *.dfm}

{ TdmConfiguracion }

{ TdmConfiguracion }

procedure TdmConfiguracion.DataModuleCreate(Sender: TObject);
begin
  inherited;
  gGridForm:= TfrmConfiguraciones.Create(Self);
  gGridForm.DataSet:= adodsMaster;
end;

function TdmConfiguracion.GetIdPeridoActual: Integer;
begin
  adoqGetIdPeriodoActual.Close;
  try
    adoqGetIdPeriodoActual.Open;
    Result := adoqGetIdPeriodoActualValor.Value;
  finally
    adoqGetIdPeriodoActual.Close;
  end;
end;

end.