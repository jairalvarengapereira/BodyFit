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
  uFormat in 'Units\uFormat.pas',
  UnitPrin in 'UnitPrin.pas' {FrmPrin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrin, FrmPrin);
  Application.Run;
end.
