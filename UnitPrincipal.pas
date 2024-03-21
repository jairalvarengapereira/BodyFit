unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    Image1: TImage;
    Layout1: TLayout;
    rectCliente: TRectangle;
    Rectangle3: TRectangle;
    Image2: TImage;
    btnCliente: TSpeedButton;
    rectConfig: TRectangle;
    Rectangle4: TRectangle;
    Image3: TImage;
    btnConfig: TSpeedButton;
    rectBioimped: TRectangle;
    Rectangle6: TRectangle;
    Image4: TImage;
    btnBioimped: TSpeedButton;
    Rectangle2: TRectangle;
    Rectangle5: TRectangle;
    Image5: TImage;
    SpeedButton1: TSpeedButton;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Image6: TImage;
    SpeedButton2: TSpeedButton;
    procedure rectClienteResize(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnBioimpedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses UnitCliente;

procedure TFrmPrincipal.btnBioimpedClick(Sender: TObject);
begin
  if not Assigned(FrmCliente) then
    Application.CreateForm(TFrmCliente, FrmCliente);
  FrmCliente.Show;
end;

procedure TFrmPrincipal.btnClienteClick(Sender: TObject);
begin
  if not Assigned(FrmCliente) then
    Application.CreateForm(TFrmCliente, FrmCliente);
  FrmCliente.Show;
end;

procedure TFrmPrincipal.rectClienteResize(Sender: TObject);
begin
  rectBioimped.Width := rectCliente.Width;
  rectBioimped.Height := rectCliente.Height;
end;

end.
