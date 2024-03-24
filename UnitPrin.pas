unit UnitPrin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFrmPrin = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Circle1: TCircle;
    Circle2: TCircle;
    Label2: TLabel;
    rectMenu: TRectangle;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Label3: TLabel;
    Rectangle2: TRectangle;
    Label4: TLabel;
    Rectangle4: TRectangle;
    Label5: TLabel;
    Image3: TImage;
    Layout3: TLayout;
    Rectangle8: TRectangle;
    Fotos: TLabel;
    Image5: TImage;
    Rectangle9: TRectangle;
    Label10: TLabel;
    Rectangle10: TRectangle;
    Label11: TLabel;
    Image4: TImage;
    Image6: TImage;
    Image8: TImage;
    Image9: TImage;
    procedure Rectangle3Click(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure Rectangle10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrin: TFrmPrin;

implementation

{$R *.fmx}

uses UnitCliente, UnitBioimpedancia, UnitFotos, UnitIMC, UnitRanking;

procedure TFrmPrin.Image5Click(Sender: TObject);
begin
  if not Assigned(FrmFotos) then
    Application.CreateForm(TFrmFotos, FrmFotos);
  FrmFotos.Show;
end;

procedure TFrmPrin.Rectangle10Click(Sender: TObject);
begin
  if not Assigned(FrmRanking) then
    Application.CreateForm(TFrmRanking, FrmRanking);
  FrmRanking.Show;
end;

procedure TFrmPrin.Rectangle2Click(Sender: TObject);
begin
  if not Assigned(FrmIMC) then
    Application.CreateForm(TFrmIMC, FrmIMC);
  FrmIMC.Show;
end;

procedure TFrmPrin.Rectangle3Click(Sender: TObject);
begin
  if not Assigned(FrmCliente) then
    Application.CreateForm(TFrmCliente, FrmCliente);
  FrmCliente.Show;
end;

procedure TFrmPrin.Rectangle4Click(Sender: TObject);
begin
  if not Assigned(FrmBiomimpedancia) then
    Application.CreateForm(TFrmBiomimpedancia, FrmBiomimpedancia);
  FrmBiomimpedancia.Show;
end;

procedure TFrmPrin.Rectangle8Click(Sender: TObject);
begin
  if not Assigned(FrmFotos) then
    Application.CreateForm(TFrmFotos, FrmFotos);
  FrmFotos.Show;
end;

end.
