unit PersonasForm;

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
  dxSkinsdxBarPainter, dxBar, Vcl.ImgList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxClasses, Vcl.StdActns, Vcl.DBActns, System.Actions,
  Vcl.ActnList, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, PersonasDM;

type
  TfrmPersonas = class(T_frmGrid)
    tvMasterIdPersona: TcxGridDBColumn;
    tvMasterRFC: TcxGridDBColumn;
    tvMasterIdPersonaTipo: TcxGridDBColumn;
    tvMasterIdRazonSocialTipo: TcxGridDBColumn;
    tvMasterIdSexo: TcxGridDBColumn;
    tvMasterIdEstadoCivil: TcxGridDBColumn;
    tvMasterIdPais: TcxGridDBColumn;
    tvMasterIdPoblacion: TcxGridDBColumn;
    tvMasterRazonSocial: TcxGridDBColumn;
    tvMasterNombre: TcxGridDBColumn;
    tvMasterApellidoPaterno: TcxGridDBColumn;
    tvMasterApellidoMaterno: TcxGridDBColumn;
    tvMasterFechaNacimiento: TcxGridDBColumn;
    tvMasterPersonaTipo: TcxGridDBColumn;
    tvMasterRazonSocialTipo: TcxGridDBColumn;
    tvMasterSexo: TcxGridDBColumn;
    tvMasterEstadoCivil: TcxGridDBColumn;
    tvMasterPais: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    FRol: TPRol;
    procedure SetRol(const Value: TPRol);
    { Private declarations }
  public
    { Public declarations }
    property Rol: TPRol read FRol write SetRol;
  end;

implementation

{$R *.dfm}

uses PersonasEdit;

procedure TfrmPersonas.FormCreate(Sender: TObject);
begin
  inherited;
  gEditForm:= TfrmPersonasEdit.Create(Self);
  gEditForm.Tag := Self.Tag;
end;

procedure TfrmPersonas.SetRol(const Value: TPRol);
begin
  FRol := Value;
  TfrmPersonasEdit(gEditForm).Rol:= Value;
end;

end.
