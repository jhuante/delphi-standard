unit MovimientosFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, _GridForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxBar, Vcl.ImgList,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ExtCtrls, cxDBLookupComboBox, cxBarEditItem;

type
  TfrmMovimientos = class(T_frmGrid)
    tvMasterIdMovimiento: TcxGridDBColumn;
    tvMasterIdInstruccion: TcxGridDBColumn;
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterIdPeriodo: TcxGridDBColumn;
    tvMasterPeriodo: TcxGridDBColumn;
    tvMasterFecha: TcxGridDBColumn;
    tvMasterPersona: TcxGridDBColumn;
    dxbbCalcular: TdxBarButton;
    dxbbCalcularCXP: TdxBarButton;
    dsPeriodos: TDataSource;
    cxedtPeriodo: TcxBarEditItem;
    tvMasterIngresos: TcxGridDBColumn;
    tvMasterDescuentos: TcxGridDBColumn;
    tvMasterBase: TcxGridDBColumn;
    tvMasterEntregas: TcxGridDBColumn;
    tvMasterPercepciones: TcxGridDBColumn;
    tvMasterDeducciones: TcxGridDBColumn;
    tvMasterPrestaciones: TcxGridDBColumn;
    tvMasterObligaciones: TcxGridDBColumn;
    tvMasterOperaciones: TcxGridDBColumn;
    tvMasterImpuestoTrasladado: TcxGridDBColumn;
    tvMasterImpuestoRetenido: TcxGridDBColumn;
    tvMasterCosto: TcxGridDBColumn;
    tvMasterCarga: TcxGridDBColumn;
  private
    FMovimientosCalculados: TBasicAction;
    FCalcularCXP: TBasicAction;
    FDataSetPeriodo: TDataSet;
    procedure SetMovimientosCalculados(const Value: TBasicAction);
    procedure SetCalcularCXP(const Value: TBasicAction);
    function GetIdPeriodo: Integer;
    procedure SetDataSetPeriodo(const Value: TDataSet);
    procedure SetIdPeriodo(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property MovimientosCalculados: TBasicAction read FMovimientosCalculados write SetMovimientosCalculados;
    property CalcularCXP: TBasicAction read FCalcularCXP write SetCalcularCXP;
    property IdPeriodo: Integer read GetIdPeriodo write SetIdPeriodo;
    property DataSetPeriodo: TDataSet read FDataSetPeriodo write SetDataSetPeriodo;
  end;

implementation

{$R *.dfm}

uses MovimientosDM;

{ TfrmMovimientos }

function TfrmMovimientos.GetIdPeriodo: Integer;
begin
  if VarIsNull(cxedtPeriodo.EditValue) then
    Result:= 0
  else
    Result:= cxedtPeriodo.EditValue;
end;

procedure TfrmMovimientos.SetCalcularCXP(const Value: TBasicAction);
begin
  FCalcularCXP := Value;
  dxbbCalcularCXP.Action:= Value;
end;

procedure TfrmMovimientos.SetDataSetPeriodo(const Value: TDataSet);
begin
  FDataSetPeriodo := Value;
  dsPeriodos.DataSet:= Value;
end;

procedure TfrmMovimientos.SetIdPeriodo(const Value: Integer);
begin
  cxedtPeriodo.EditValue:= Value;
end;

procedure TfrmMovimientos.SetMovimientosCalculados(const Value: TBasicAction);
begin
  FMovimientosCalculados := Value;
  dxbbCalcular.Action:= Value;
end;

end.
