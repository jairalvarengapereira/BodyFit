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
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList,
  FMX.ImgList;

type
  TFrmCliente = class(TForm)
    rectTit: TRectangle;
    lblTit: TLabel;
    Image1: TImage;
    btnVoltar: TImage;
    Layout2: TLayout;
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
    lytBotoes: TLayout;
    Rectangle1: TRectangle;
    Label1: TLabel;
    edtAltura: TEdit;
    Rectangle4: TRectangle;
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
    cirCancel: TCircle;
    Image11: TImage;
    circDel: TCircle;
    Image6: TImage;
    ImageList: TImageList;
    Glyph: TGlyph;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvClienteDeleteDeletingItem(Sender: TObject; AIndex: Integer;
      var ACanDelete: Boolean);
    procedure edtCPFKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure edtFoneKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure edtCEPKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure rectBuscarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure dtNascimentoChange(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
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

procedure TFrmCliente.ListarCliente;
begin
end;

procedure TFrmCliente.Add_Tarefa(id : integer; nome : string);
begin
end;

procedure TFrmCliente.lvClienteDeleteDeletingItem(Sender: TObject;
  AIndex: Integer; var ACanDelete: Boolean);
begin      ACanDelete := false;
end;

procedure TFrmCliente.Rectangle4Click(Sender: TObject);
begin
  if Glyph.ImageIndex = 0 then
    Glyph.ImageIndex := 1
  else
    Glyph.ImageIndex := 0;
end;

procedure TFrmCliente.rectBuscaClick(Sender: TObject);
begin
  ConsultarCEP(edtCEP.Text);
end;

procedure TFrmCliente.rectBuscarClick(Sender: TObject);
begin
  ConsultarCEP(edtCEP.Text);
end;

procedure TFrmCliente.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCliente.ConsultarCEP(cep: string);
var
  resp : IResponse;
begin
  if SomenteNumero(edtCEP.Text).Length <> 8 then
  begin
      ShowMessage('CEP inv�lido');
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
      ShowMessage('CEP n�o encontrado')
    else
    begin
      with MemTable do
      begin
        edtEndereco.Text := FieldByName('logradouro').AsString;
        edtBairro.Text := FieldByName('bairro').AsString;
        edtCidade.Text := FieldByName('localidade').AsString;
        edtUF.Text := FieldByName('uf').AsString;
      end;
    end;
  end
  else
    ShowMessage('Erro ao consultar CEP');
end;

procedure TFrmCliente.dtNascimentoChange(Sender: TObject);
begin
  Glyph.ImageIndex := 1;
end;

end.
