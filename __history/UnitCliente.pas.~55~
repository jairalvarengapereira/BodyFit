unit UnitCliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.TabControl, FMX.Edit,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView;

type
  TFrmCliente = class(TForm)
    rectTit: TRectangle;
    lblTit: TLabel;
    Image1: TImage;
    TabControl: TTabControl;
    tbMenu: TTabItem;
    tbAddCli: TTabItem;
    tbDelCli: TTabItem;
    Image5: TImage;
    Layout2: TLayout;
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
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Rectangle11: TRectangle;
    Edit5: TEdit;
    Rectangle12: TRectangle;
    Edit6: TEdit;
    Rectangle13: TRectangle;
    Rectangle10: TRectangle;
    Image6: TImage;
    lytBotoes: TLayout;
    Rectangle5: TRectangle;
    Image7: TImage;
    lvClienteDelete: TListView;
    procedure Image5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvClienteDeleteDeletingItem(Sender: TObject; AIndex: Integer;
      var ACanDelete: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
  private
    procedure ListarCliente;
    procedure Add_Tarefa(id: integer; nome: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.fmx}

uses UnitRanking;

procedure TFrmCliente.btnClienteClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(TSpeedButton(Sender).Tag);
  lblTit.Text := TSpeedButton(Sender).Text;
  if TabControl.TabIndex = 2 then
    ListarCliente;
end;

procedure TFrmCliente.btnConfigClick(Sender: TObject);
begin
  if not Assigned(FrmRanking) then
    Application.CreateForm(TFrmRanking, FrmRanking);
  FrmRanking.Show;
end;

procedure TFrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FrmCliente := nil;
end;

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
  // Configurar texto do botao delete..
  lvClienteDelete.DeleteButtonText := 'Excluir';
end;

procedure TFrmCliente.FormShow(Sender: TObject);
begin
  TabControl.GotoVisibleTab(0);
end;

procedure TFrmCliente.Image5Click(Sender: TObject);
begin
  lblTit.Text := 'Clientes';
  if TabControl.TabIndex > 0 then
    TabControl.GotoVisibleTab(0)
  else
    Close;
end;

procedure TFrmCliente.ListarCliente;
var
  Lvitem : TListViewItem;
  txt : TListItemText;
begin
  lvClienteDelete.Items.Clear;
  lvClienteDelete.BeginUpdate;

  Add_Tarefa(110,'Joãozinho');
  Add_Tarefa(111,'Zezinho');
  Add_Tarefa(112,'Huguinho');
  Add_Tarefa(113,'Luizinho');
  Add_Tarefa(114,'Zé das Couves');
  Add_Tarefa(115,'Maria Bonita');
  Add_Tarefa(116,'Lampião');
  Add_Tarefa(117,'Chiquinho');
  Add_Tarefa(118,'Marcelinho');

  lvClienteDelete.EndUpdate;
end;

procedure TFrmCliente.Add_Tarefa(id : integer; nome : string);
var
  item : TListViewItem;
  txt : TListItemText;
begin
  with FrmCliente do
  begin
    item := lvClienteDelete.Items.Add;
    item.Objects.Clear;
    item.TagString := id.ToString;

    with item do
    begin
      // Adiciona ID e Nome
      txt := TListItemText(Objects.FindDrawable('Text1'));
      txt.Text := nome;
      txt.Font.Size := 18;
      txt.Height := 70;
      txt.PlaceOffset.X := 25;
      txt.PlaceOffset.Y := 0;
      txt.TagString := id.ToString;
    end;
  end;
end;

procedure TFrmCliente.lvClienteDeleteDeletingItem(Sender: TObject;
  AIndex: Integer; var ACanDelete: Boolean);
var
    txt : TListItemText;
begin
    txt := TListItemText(FrmCliente.lvClienteDelete.Items[AIndex].Objects.FindDrawable('Text1'));

    if txt.TagString <> '111' then
        showmessage('Excluindo tarefa id = ' + txt.tagstring)
    else
        ACanDelete := false;
end;

end.
