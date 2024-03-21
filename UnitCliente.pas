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
    Rectangle1: TRectangle;
    Label1: TLabel;
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
  private
    procedure ListarCliente;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.fmx}

procedure TFrmCliente.btnClienteClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(TSpeedButton(Sender).Tag);
  if TabControl.TabIndex = 2 then
    ListarCliente;
end;

procedure TFrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FrmCliente := nil;
end;

procedure TFrmCliente.FormShow(Sender: TObject);
begin
  TabControl.GotoVisibleTab(0);
end;

procedure TFrmCliente.Image5Click(Sender: TObject);
begin
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
  lvClienteDelete.BeginUpdate;
  lvClienteDelete.Items.Clear;
//
//  lvClienteDelete.Items.Add.Text := 'Jair';
//  lvClienteDelete.Items.Add.Text := 'Jair';
//  lvClienteDelete.Items.Add.Text := 'Jair';


  LvItem := lvClienteDelete.Items.Add;
  TListItemText(LvItem.Objects.FindDrawable('txtNome')  ).Text := 'Adalberto Silva';
  TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text := '015';
  Lvitem.TagString := TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text;

  LvItem := lvClienteDelete.Items.Add;
  TListItemText(LvItem.Objects.FindDrawable('txtNome')  ).Text := 'Jo�o Aranha';
  TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text := '021';
  Lvitem.TagString := TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text;

  LvItem := lvClienteDelete.Items.Add;
  TListItemText(LvItem.Objects.FindDrawable('txtNome')  ).Text := 'Jos� Das Couves';
  TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text := '065';
  Lvitem.TagString := TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text;

  LvItem := lvClienteDelete.Items.Add;
  TListItemText(LvItem.Objects.FindDrawable('txtNome')  ).Text := 'Jos� Maria dos Risos Fartos';
  TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text := '018';
  Lvitem.TagString := TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text;

  LvItem := lvClienteDelete.Items.Add;
  TListItemText(LvItem.Objects.FindDrawable('txtNome')  ).Text := 'Martim Soares';
  TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text := '098';
  Lvitem.TagString := TListItemText(LvItem.Objects.FindDrawable('txtCodigo')).Text;


  lvClienteDelete.EndUpdate;
end;



procedure TFrmCliente.lvClienteDeleteDeletingItem(Sender: TObject;
  AIndex: Integer; var ACanDelete: Boolean);
var
    txt : TListItemText;
begin
    txt := TListItemText(FrmCliente.lvClienteDelete.Items[AIndex].Objects.FindDrawable('txtNome'));

    if txt.TagString <> '111' then
        showmessage('Excluindo tarefa id = ' + txt.tagstring)
    else
        ACanDelete := false;
end;

end.
