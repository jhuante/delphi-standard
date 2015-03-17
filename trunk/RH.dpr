program RH;

uses
  Vcl.Forms,
  System.SysUtils,
  _MainRibbonForm in 'Standard\_MainRibbonForm.pas' {_frmMainRibbon},
  _AboutForm in 'Standard\_AboutForm.pas' {_frmAbout},
  _ConectionDmod in 'Standard\_ConectionDmod.pas' {_dmConection: TDataModule},
  _LoginForm in 'Standard\_LoginForm.pas' {_frmLogin},
  _MainForm in 'Standard\_MainForm.pas' {_frmMain},
  _ProgressForm in 'Standard\_ProgressForm.pas' {_frmProgress},
  _StandarDMod in 'Standard\_StandarDMod.pas' {_dmStandar: TDataModule},
  _StandarForm in 'Standard\_StandarForm.pas' {_StandarFrm},
  _StandarGridForm in 'Standard\_StandarGridForm.pas' {_frmStandarGrid},
  _Utils in 'Standard\_Utils.pas',
  MainForm in 'MainForm.pas' {frmMain},
  _SplashForm in 'Standard\_SplashForm.pas' {_frmSplash},
  _GridForm in 'Standard\_GridForm.pas' {_frmGrid},
  UbicacionesDM in 'Catalogos\UbicacionesDM.pas' {dmUbicaciones: TDataModule},
  PaisesForm in 'Catalogos\PaisesForm.pas' {frmPaises},
  _EditForm in 'Standard\_EditForm.pas' {_frmEdit},
  PaisForm in 'Catalogos\PaisForm.pas' {frmPais},
  EstadosForm in 'Catalogos\EstadosForm.pas' {frmEstados},
  EstadoForm in 'Catalogos\EstadoForm.pas' {frmEstado},
  MunicipiosForm in 'Catalogos\MunicipiosForm.pas' {frmMunicipios},
  MunicipioForm in 'Catalogos\MunicipioForm.pas' {frmMunicipio},
  PoblacionesForm in 'Catalogos\PoblacionesForm.pas' {frmPoblaciones},
  PoblacionForm in 'Catalogos\PoblacionForm.pas' {frmPoblacion},
  BancoForm in 'Catalogos\BancoForm.pas' {frmBanco},
  BancosDM in 'Catalogos\BancosDM.pas' {dmBancos: TDataModule},
  BancosForm in 'Catalogos\BancosForm.pas' {frmBancos},
  MonedasDM in 'Catalogos\MonedasDM.pas' {dmMonedas: TDataModule},
  MonedaForm in 'Catalogos\MonedaForm.pas' {frmMoneda},
  MonedasForm in 'Catalogos\MonedasForm.pas' {frmMonedas},
  UnidaddeNegocioForm in 'Catalogos\UnidaddeNegocioForm.pas' {frmUnidaddeNegocio},
  UnidadesdeNegocioForm in 'Catalogos\UnidadesdeNegocioForm.pas' {frmUnidadesdeNegocio},
  PuestosDM in 'Catalogos\PuestosDM.pas' {dmPuestos: TDataModule},
  GerenciaForm in 'Catalogos\GerenciaForm.pas' {frmGerencia},
  GerenciasForm in 'Catalogos\GerenciasForm.pas' {frmGerencias},
  DepartamentoForm in 'Catalogos\DepartamentoForm.pas' {frmDepartamento},
  DepartamentosForm in 'Catalogos\DepartamentosForm.pas' {frmDepartamentos},
  PuestoForm in 'Catalogos\PuestoForm.pas' {frmPuesto},
  PuestosForm in 'Catalogos\PuestosForm.pas' {frmPuestos},
  PuestosPerfilesDM in 'Catalogos\PuestosPerfilesDM.pas' {dmPuestosPerfiles: TDataModule},
  PuestoPerfilForm in 'Catalogos\PuestoPerfilForm.pas' {frmPuestoPerfil},
  PuestosPerfilesForm in 'Catalogos\PuestosPerfilesForm.pas' {frmPuestosPerfiles},
  CapacitacionDM in 'Catalogos\CapacitacionDM.pas' {dmCapacitacion: TDataModule},
  BateriaCapacitacionForm in 'Catalogos\BateriaCapacitacionForm.pas' {frmBateriaCapacitacion},
  BateriaCapacitacionesForm in 'Catalogos\BateriaCapacitacionesForm.pas' {frmBateriasCapacitacion},
  BateriaCapacitacionCursoForm in 'Catalogos\BateriaCapacitacionCursoForm.pas' {frmBateriaCapacitacionCurso},
  BateriaCapacitacionCursosForm in 'Catalogos\BateriaCapacitacionCursosForm.pas' {frmBateriaCapacitacionCursos},
  BateriaCapacitacionCursoTemaForm in 'Catalogos\BateriaCapacitacionCursoTemaForm.pas' {frmBateriaCapacitacionCursosTema},
  BateriaCapacitacionCursosTemasForm in 'Catalogos\BateriaCapacitacionCursosTemasForm.pas' {frmBateriaCapacitacionCursosTemas},
  PlazasTurnosDM in 'Catalogos\PlazasTurnosDM.pas' {dmPlazasTurnos: TDataModule},
  PlazaTurnoForm in 'Catalogos\PlazaTurnoForm.pas' {frmPlazaTurno},
  PlazasTurnosForm in 'Catalogos\PlazasTurnosForm.pas' {frmPlazasTurnos},
  EsquemaPagosDM in 'Catalogos\EsquemaPagosDM.pas' {dmEsquemaPagos: TDataModule},
  EsquemaPagoForm in 'Catalogos\EsquemaPagoForm.pas' {frmEsquemaPago},
  EsquemaPagosForm in 'Catalogos\EsquemaPagosForm.pas' {frmEsquemaPagos},
  FormulasDM in 'Catalogos\FormulasDM.pas' {dmFormulas: TDataModule},
  FormulaForm in 'Catalogos\FormulaForm.pas' {frmFormula},
  FormulasForm in 'Catalogos\FormulasForm.pas' {frmFormulas},
  ReglasNegocioDM in 'Catalogos\ReglasNegocioDM.pas' {dmReglasNegocio: TDataModule},
  ReglaNegocioForm in 'Catalogos\ReglaNegocioForm.pas' {frmReglaNegocio},
  ReglasNegocioForm in 'Catalogos\ReglasNegocioForm.pas' {frmReglasNegocio},
  PlazasDM in 'Catalogos\PlazasDM.pas' {dmPlazas: TDataModule},
  PlazaForm in 'Catalogos\PlazaForm.pas' {frmPlaza},
  PlazasForm in 'Catalogos\PlazasForm.pas' {frmPlazas},
  DomiciliosDM in 'Catalogos\DomiciliosDM.pas' {dmDomicilios: TDataModule},
  EstablecimientosDM in 'Catalogos\EstablecimientosDM.pas' {dmEstablecimientos: TDataModule},
  EstablecimientoForm in 'Catalogos\EstablecimientoForm.pas' {frmEstablecimiento},
  EstablecimientosForm in 'Catalogos\EstablecimientosForm.pas' {frmEstablecimientos};

{$R *.res}

var
  vFrmSplash : T_frmSplash;
  vCheckOK: boolean;

begin
  Application.Initialize;
  vFrmSplash := T_frmSplash.Create(nil);
  try
    vFrmSplash.Show;
    Application.ProcessMessages;
    Sleep(1800);
    vCheckOK := True
  finally
    vFrmSplash.Free;
  end;
  if vCheckOK then
  begin
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(T_dmConection, _dmConection);
  Application.CreateForm(T_frmProgress, _frmProgress);
  Application.CreateForm(T_frmMainRibbon, _frmMainRibbon);
  Application.Run;
  end;
end.

