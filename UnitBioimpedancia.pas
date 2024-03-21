unit UnitBioimpedancia;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox;

type
  TFrmBiomimpedancia = class(TForm)
    rectTit: TRectangle;
    lblTit: TLabel;
    Image1: TImage;
    Image5: TImage;
    Rectangle1: TRectangle;
    ComboBox1: TComboBox;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBiomimpedancia: TFrmBiomimpedancia;

implementation

{$R *.fmx}

end.
