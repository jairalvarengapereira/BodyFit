program BodyFit;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitCliente in 'UnitCliente.pas' {FrmCliente},
  UnitRanking in 'UnitRanking.pas' {FrmRanking};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmRanking, FrmRanking);
  Application.Run;
end.
