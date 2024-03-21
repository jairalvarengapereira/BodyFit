unit UnitRanking;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.TabControl,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView;

type
  TFrmRanking = class(TForm)
    Rectangle1: TRectangle;
    lblTit: TLabel;
    Image1: TImage;
    Image5: TImage;
    lytConsultar: TLayout;
    rectConsulta: TRectangle;
    Rectangle4: TRectangle;
    Image3: TImage;
    btnDetalhe: TSpeedButton;
    TabControl: TTabControl;
    tbMenu: TTabItem;
    tbDetalhe: TTabItem;
    TabItem3: TTabItem;
    Rectangle2: TRectangle;
    lvRanking: TListView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ListarRanking;
    procedure Add_Ranking(valor: double; nome: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRanking: TFrmRanking;

implementation

{$R *.fmx}

procedure TFrmRanking.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FrmRanking := nil;
end;

procedure TFrmRanking.FormCreate(Sender: TObject);
begin
  ListarRanking;
end;

procedure TFrmRanking.Image5Click(Sender: TObject);
begin
  lblTit.Text := 'Ranking';
  if TabControl.TabIndex > 0 then
    TabControl.GotoVisibleTab(0)
  else
    Close;
end;

procedure TFrmRanking.Add_Ranking(valor: double ; nome: string);
var
  item : TListViewItem;
  cliente, vlr : TListItemText;
begin
  with FrmRanking do
  begin
    item := lvRanking.Items.Add;
    item.Objects.Clear;

    with item do
    begin
      cliente := TListItemText(Objects.FindDrawable('txtNome'));
      cliente.Text := nome;
      vlr := TListItemText(Objects.FindDrawable('txtValor'));
      vlr.Text := FormatFloat('R$ #,##0.00', valor);
    end;
  end;
end;

procedure TFrmRanking.ListarRanking;
var
  Lvitem : TListViewItem;
  txt : TListItemText;
begin
  lvRanking.Items.Clear;
  lvRanking.BeginUpdate;

  Add_Ranking(25000.34,'Jo�ozinho');
  Add_Ranking(23000,'Zezinho');
  Add_Ranking(19000,'Huguinho');
  Add_Ranking(17000,'Luizinho');
  Add_Ranking(16500.56,'Z� das Couves');
  Add_Ranking(14000,'Maria Bonita');
  Add_Ranking(10000,'Lampi�o');
  Add_Ranking(9600,'Chiquinho');
  Add_Ranking(8450,'Marcelinho');

  lvRanking.EndUpdate;
end;

end.
