unit UnitBioimped;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TFrmBioimped = class(TForm)
    rectTit: TRectangle;
    lblTit: TLabel;
    Image1: TImage;
    Image5: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBioimped: TFrmBioimped;

implementation

{$R *.fmx}

end.
