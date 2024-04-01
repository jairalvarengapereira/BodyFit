program BodyFit;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitCliente in 'UnitCliente.pas' {FrmCliente},
  UnitRanking in 'UnitRanking.pas' {FrmRanking},
  UnitBioimpedancia in 'UnitBioimpedancia.pas' {FrmBiomimpedancia},
  UnitIMC in 'UnitIMC.pas' {FrmIMC},
  UnitFotos in 'UnitFotos.pas' {FrmFotos},
  u99Permissions in 'Units\u99Permissions.pas',
  UnitPrin in 'UnitPrin.pas' {FrmPrin},
  uDM in 'Units\uDM.pas' {DM: TDataModule},
  uFormat in 'Units\uFormat.pas',
  VirtualKeyboardBase in 'Units\VirtualKeyboardBase.pas' {VKBaseForm},
  qdac_fmx_vkhelper in 'Units\qdac_fmx_vkhelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrin, FrmPrin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TVKBaseForm, VKBaseForm);
  Application.Run;
end.
