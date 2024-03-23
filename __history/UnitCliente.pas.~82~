unit UnitCliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.TabControl, FMX.Edit,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.ListBox, FMX.DateTimeCtrls,
  RESTRequest4D,
  DataSet.Serialize.Adapter.RESTRequest4D,
  DataSet.Serialize, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    lytCliente: TLayout;
    rectAdd: TRectangle;
    Rectangle3: TRectangle;
    Image2: TImage;
    btnAdd: TSpeedButton;
    rectDel: TRectangle;
    Rectangle6: TRectangle;
    Image4: TImage;
    BtnDel: TSpeedButton;
    Rectangle2: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    edtEmail: TEdit;
    edtFone: TEdit;
    edtCEP: TEdit;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    edtCPF: TEdit;
    Rectangle13: TRectangle;
    lytBotoes: TLayout;
    lvClienteDelete: TListView;
    Rectangle1: TRectangle;
    Label1: TLabel;
    edtAltura: TEdit;
    Image6: TImage;
    Image7: TImage;
    Rectangle4: TRectangle;
    Image3: TImage;
    cbCliente: TComboBox;
    Label2: TLabel;
    dtNascimento: TDateEdit;
    Label3: TLabel;
    lytDtNasc: TLayout;
    Rectangle5: TRectangle;
    edtEndereco: TEdit;
    lytCEP: TLayout;
    rectBuscar: TRectangle;
    Image8: TImage;
    Layout1: TLayout;
    Rectangle10: TRectangle;
    edtNumero: TEdit;
    Rectangle16: TRectangle;
    edtBairro: TEdit;
    Rectangle17: TRectangle;
    edtComplemento: TEdit;
    Layout3: TLayout;
    Rectangle18: TRectangle;
    edtCidade: TEdit;
    Rectangle22: TRectangle;
    edtUF: TEdit;
    Layout4: TLayout;
    MemTable: TFDMemTable;
    procedure Image5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvClienteDeleteDeletingItem(Sender: TObject; AIndex: Integer;
      var ACanDelete: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure edtCPFKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure edtFoneKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure edtCEPKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure rectBuscarClick(Sender: TObject);
  private
    procedure ListarCliente;
    procedure Add_Tarefa(id: integer; nome: string);
    procedure ConsultarCEP(cep: string);
    procedure rectBuscaClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.fmx}

uses UnitRanking, uFormat;

procedure TFrmCliente.btnAddClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(TSpeedButton(Sender).Tag);
  lblTit.Text := TSpeedButton(Sender).Text;
  if TabControl.TabIndex = 2 then
    ListarCliente;
end;

procedure TFrmCliente.edtCEPKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: WideChar; Shift: TShiftState);
begin
  if Key = vkBack then
  exit;

  if Length(edtCEP.Text) = 5 then
  begin
     edtCEP.Text := edtCEP.Text + '-';
     edtCEP.Selstart := Length(edtCEP.text);
  end;
end;

procedure TFrmCliente.edtCPFKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: WideChar; Shift: TShiftState);
begin
  if Key = vkBack then
  exit;

  if Length(edtCPF.Text) = 3 then
  begin
     edtCPF.Text := edtCPF.Text + '.';
     edtCPF.Selstart := Length(edtCPF.text);
  end;

  if Length(edtCPF.Text) = 7 then
  begin
     edtCPF.Text := edtCPF.Text + '.';
     edtCPF.Selstart := Length(edtCPF.text);
  end;

  if Length(edtCPF.Text) = 11 then
  begin
   edtCPF.Text := edtCPF.Text + '-';
   edtCPF.Selstart := Length(edtCPF.text);
  end
end;

procedure TFrmCliente.edtFoneKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: WideChar; Shift: TShiftState);
begin
  if Key = vkBack then
  exit;

  if Length(edtFone.Text) < 2  then
  begin
     edtFone.Text := edtFone.Text + '(';
     edtFone.Selstart := Length(edtFone.text);
  end;

  if Length(edtFone.Text) = 3 then
  begin
     edtFone.Text := edtFone.Text + ') ';
     edtFone.Selstart := Length(edtFone.text);
  end;

  if Length(edtFone.Text) = 10 then
  begin
     edtFone.Text := edtFone.Text + '-';
     edtFone.Selstart := Length(edtFone.text);
  end;
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

  Add_Tarefa(110,'Chiquinho');
  Add_Tarefa(111,'Huguinho');
  Add_Tarefa(112,'Joãozinho');
  Add_Tarefa(113,'Luizinho');
  Add_Tarefa(114,'Lampião');
  Add_Tarefa(115,'Marcelinho');
  Add_Tarefa(116,'Maria Bonita');
  Add_Tarefa(117,'Zé das Couves');
  Add_Tarefa(118,'Zezinho');

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
      txt := TListItemText(Objects.FindDrawable('txtNome'));
      txt.Text := nome;
      txt := TListItemText(Objects.FindDrawable('txtCod'));
      txt.Text := Formatfloat('000',id);
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
//
//    if txt.TagString <> '111' then
//        showmessage('Excluindo tarefa id = ' + txt.tagstring)
//    else
//        ACanDelete := false;
end;

procedure TFrmCliente.rectBuscaClick(Sender: TObject);
begin
    ConsultarCEP(edtCEP.Text);
end;

procedure TFrmCliente.rectBuscarClick(Sender: TObject);
begin
  ConsultarCEP(edtCEP.Text);
end;

procedure TFrmCliente.ConsultarCEP(cep: string);
var
  resp : IResponse;
begin
  if SomenteNumero(edtCEP.Text).Length <> 8 then
  begin
      ShowMessage('CEP inválido');
      exit;
  end;

  resp := TRequest.New.BaseURL('viacep.com.br/ws')
          .Resource(SomenteNumero(edtCEP.Text) + '/json')
          .Accept('application/json')
          .Adapters(TDataSetSerializeAdapter.New(MemTable))
          .Get;

  if Resp.StatusCode = 200 then
  begin
    if Resp.Content.IndexOf('erro') > 0 then
      ShowMessage('CEP não encontrado')
    else
    begin
      with MemTable do
      begin
        edtEndereco.Text := FieldByName('logradouro').AsString;
        edtBairro.Text := FieldByName('bairro').AsString;
        edtCidade.Text := FieldByName('localidade').AsString;
        edtUF.Text := FieldByName('uf').AsString;

//        lblEndereco.Text := 'CEP: ' + FieldByName('cep').AsString + sLineBreak +
//                            'End: ' +  + sLineBreak +
//                            'Compl: ' + FieldByName('complemento').AsString + sLineBreak +
//                            'Bairro: ' + FieldByName('bairro').AsString + sLineBreak +
//                            'Cidade: ' + FieldByName('localidade').AsString + sLineBreak +
//                            'UF: ' + FieldByName('uf').AsString + sLineBreak +
//                            'Cod. IBGE: ' + FieldByName('ibge').AsString;
      end;
    end;
  end
  else
    ShowMessage('Erro ao consultar CEP');
end;

end.
