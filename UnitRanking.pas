unit UnitRanking;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.TabControl,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.DateTimeCtrls, FMX.Edit, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMXTee.Engine, FMXTee.Procs, FMXTee.Chart, FMXTee.Series;

type
  TFrmRanking = class(TForm)
    Rectangle1: TRectangle;
    lblTit: TLabel;
    Image1: TImage;
    btnVoltar: TImage;
    lytConsultar: TLayout;
    rectConsulta: TRectangle;
    Rectangle4: TRectangle;
    Image3: TImage;
    btnDetalhe: TSpeedButton;
    TabControl: TTabControl;
    tbLista: TTabItem;
    tbDetalhe: TTabItem;
    TabItem3: TTabItem;
    Rectangle2: TRectangle;
    lvRanking: TListView;
    lytData: TLayout;
    Label3: TLabel;
    dtIniGrafico: TDateEdit;
    Label9: TLabel;
    dtFinGrafico: TDateEdit;
    Circle1: TCircle;
    btnBuscar: TSpeedButton;
    Image2: TImage;
    Rectangle3: TRectangle;
    lblCliente: TLabel;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Image4: TImage;
    lvDetalheInveste: TListView;
    Layout1: TLayout;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Image6: TImage;
    btnGrafico: TSpeedButton;
    Rectangle11: TRectangle;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Rectangle10: TRectangle;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure lvRankingItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnDetalheClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ListarRanking;
    procedure Add_Ranking(valor: double; id: integer; nome: string);
    procedure Add_DetalheInveste(valor:double; DetData, obs:string);
    procedure ListarDetalheInveste;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRanking: TFrmRanking;

implementation

{$R *.fmx}

procedure TFrmRanking.btnBuscarClick(Sender: TObject);
begin
  ListarRanking;
end;

procedure TFrmRanking.btnDetalheClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(TabControl.TabIndex + 1);

  if TabControl.TabIndex = 1 then
  begin
    ListarDetalheInveste;
  end
  else
  if TabControl.TabIndex = 2 then
  begin
    Chart1.Series[0].Clear;
    chart1.Series[0].Addy(17500,'');
    chart1.Series[0].AddY(6500,'');
    chart1.Series[0].Addy(32000,'');
    chart1.Series[0].AddY(27800,'');
  end;
end;

procedure TFrmRanking.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FrmRanking := nil;
end;

procedure TFrmRanking.FormCreate(Sender: TObject);
begin
  TabControl.GotoVisibleTab(0);
end;

procedure TFrmRanking.btnVoltarClick(Sender: TObject);
begin
  lblTit.Text := 'Ranking';
  if TabControl.TabIndex > 0 then
    TabControl.GotoVisibleTab(TabControl.TabIndex-1)
  else
    Close;
end;

procedure TFrmRanking.Add_Ranking(valor:double ; id:integer; nome:string);
var
  item : TListViewItem;
  cod, cliente, vlr : TListItemText;
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
      cod := TListItemText(Objects.FindDrawable('txtCodigo'));
      cod.Text := FormatFloat('000', id);
    end;
  end;
end;

procedure TFrmRanking.Add_DetalheInveste(valor:double ; DetData,obs:string);
var
  item : TListViewItem;
  descricao, vlr, dt : TListItemText;
begin
  with FrmRanking do
  begin
    item := lvDetalheInveste.Items.Add;
    item.Objects.Clear;

    with item do
    begin
      dt := TListItemText(Objects.FindDrawable('txtData'));
      dt.Text := DetData;
      vlr := TListItemText(Objects.FindDrawable('txtValor'));
      vlr.Text := FormatFloat('R$ #,##0.00', valor);
      descricao := TListItemText(Objects.FindDrawable('txtObs'));
      descricao.Text := obs;
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

  Add_Ranking(25000.34,25,'Jo�ozinho');
  Add_Ranking(23000,12,'Zezinho');
  Add_Ranking(19000,17,'Huguinho');
  Add_Ranking(17000,1,'Luizinho');
  Add_Ranking(16500.56,7,'Z� das Couves');
  Add_Ranking(14000,5,'Maria Bonita');
  Add_Ranking(10000,11,'Lampi�o');
  Add_Ranking(9600,10,'Chiquinho');
  Add_Ranking(8450,13,'Marcelinho');

  lvRanking.EndUpdate;
end;

procedure TFrmRanking.ListarDetalheInveste;
var
  Lvitem : TListViewItem;
  txt : TListItemText;
begin
  lvDetalheInveste.Items.Clear;
  lvDetalheInveste.BeginUpdate;

  Add_DetalheInveste(17500,'03/01/2024', 'Compra de equipamentos diversos para treino');
  Add_DetalheInveste(6500,'05/10/2023', 'Compra de roupas especiais para treinamento');
  Add_DetalheInveste(32000,'15/09/2023', 'Compra de uma esteira eletr�nica');
  Add_DetalheInveste(27800,'18/08/2023', 'Compra de uma icicleta ergom�trica');

  lvDetalheInveste.EndUpdate;
end;

procedure TFrmRanking.lvRankingItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
  item : TListViewItem;
  txt : TListItemText;
begin
  item := lvRanking.Items[lvRanking.Selected.Index];
  txt := TListItemText(item.Objects.FindDrawable('txtCodigo'));
  lblCliente.Text := TListItemText(item.Objects.FindDrawable('txtNome')).Text;
end;

end.
