unit UnitIMC;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMXTee.Engine,
  FMXTee.Series, FMXTee.Procs, FMXTee.Chart;

type
  TFrmIMC = class(TForm)
    rectTit: TRectangle;
    FrmIMC: TLabel;
    Image1: TImage;
    Image5: TImage;
    Layout1: TLayout;
    imgIMC: TImage;
    lblTitVal: TLabel;
    lblPeso: TLabel;
    imgIMC1: TImage;
    imgIMC2: TImage;
    imgIMC3: TImage;
    imgIMC4: TImage;
    imgIMC5: TImage;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    lblAltura: TLabel;
    Label2: TLabel;
    lblIMC: TLabel;
    Line1: TLine;
    lblResultado: TLabel;
    Rectangle3: TRectangle;
    Label1: TLabel;
    Chart1: TChart;
    Series1: TFastLineSeries;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIMC: TFrmIMC;

implementation

{$R *.fmx}

procedure TFrmIMC.FormCreate(Sender: TObject);
begin
  lblAltura.Text    := 'Altura: 1,69 m';
  lblPeso.Text      := 'Peso..: 85 Kg';
  lblIMC.Text       := 'IMC...: 29,7958754';
  lblResultado.Text := 'Excesso de Peso';
  imgIMC.Bitmap := imgIMC3.Bitmap;
  Chart1.Series[0].Clear;
  chart1.Series[0].Addy(35.33,'');
  chart1.Series[0].AddY(32.00,'');
  chart1.Series[0].Addy(30.123,'');
  chart1.Series[0].AddY(29.7958754,'');
end;

end.
