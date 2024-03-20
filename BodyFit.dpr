program BodyFit;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitCliente in 'UnitCliente.pas' {FrmCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCliente, FrmCliente);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
