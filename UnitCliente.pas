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
    rectNome: TRectangle;
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
    cbNome: TComboBox;
    dtNascimento: TDateEdit;
    Label3: TLabel;
    lytDtNasc: TLayout;
    Rectangle5: TRectangle;
    edtEndereco: TEdit;
    lytCEP: TLayout;
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
    btnMenu: TCircle;
    ImageList: TImageList;
    edtNome: TEdit;
    lytNome: TLayout;
    rectCodigo: TRectangle;
    lblCodigo: TLabel;
    rectForm: TRectangle;
    rectMenu: TRectangle;
    btnConfirm: TCircle;
    GlyphConfirm: TGlyph;
    btnCancel: TCircle;
    GlyphCancel: TGlyph;
    GlyphMenu: TGlyph;
    btnMenuAdd: TCircle;
    Glyph3: TGlyph;
    btnMenueditar: TCircle;
    Glyph5: TGlyph;
    btnMenuDel: TCircle;
    Glyph4: TGlyph;
    btnMenuSair: TCircle;
    Glyph1: TGlyph;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCPFKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure edtFoneKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure edtCEPKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtAlturaKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure cbNomeExit(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure btnMenuAddClick(Sender: TObject);
    procedure btnMenuDelClick(Sender: TObject);
    procedure cbNomeChange(Sender: TObject);
    procedure btnMenuSairClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnMenuAlterClick(Sender: TObject);
  private
    AddCli : Boolean;
    procedure ConsultarCEP(cep: string);
    procedure rectBuscaClick(Sender: TObject);
    procedure DelCliente;
    procedure ListarClientes;
    procedure AddCliente;
    procedure AlterCliente;
    procedure LimparCampos;
    procedure BlockOff;
    procedure BlockOn;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.fmx}

uses UnitRanking, uFormat, uDM;

procedure TFrmCliente.edtAlturaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: WideChar; Shift: TShiftState);
begin
  if (not(KeyChar in ['0'..'9', '.', ','])) and (Ord(keychar)<>8) and (keychar <> #0) then
    keychar := #0;
end;

procedure TFrmCliente.edtCEPKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: WideChar; Shift: TShiftState);
begin
  if (not(KeyChar in ['0'..'9', '.', ','])) and (Ord(keychar)<>8) and (keychar <> #0) then
    keychar := #0;

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
  if (not(KeyChar in ['0'..'9', '.', ','])) and (Ord(keychar)<>8) and (keychar <> #0) then
    keychar := #0;

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
  if (not(KeyChar in ['0'..'9', '.', ','])) and (Ord(keychar)<>8) and (keychar <> #0) then
    keychar := #0;

  if (Key = vkBack) then
  exit;

  if Pos('(', edtFone.Text) = 0 then
  begin
     edtFone.Text := '(';
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

procedure TFrmCliente.FormShow(Sender: TObject);
begin
  BlockOn;
  btnConfirm.Visible := False;
  btnCancel.Visible := False;
  rectMenu.Visible := False;
  edtNome.Visible := False;
//  btnCancel.Visible := False;
  ListarClientes;
end;

procedure TFrmCliente.ListarClientes;
begin
  DM.ListarCliente;
  with DM.qryCliente do
  begin
    cbNome.Items.Clear;
//    cbNome.Items.Add('Selecione cliente');
    if RecordCount > 0 then
    begin
      while not eof do
      begin
        cbNome.Items.Add(DM.qryCliente.FieldByName('Cliente_Nome').AsString);
        Next;
      end;
      cbNome.ItemIndex := 0;
    end
    else
    begin
      ShowMessage('Nenhum cliente cadastrado');
    end;
  end;
  cbNome.Visible := True;
  cbNome.HitTest := True;
end;

procedure TFrmCliente.BlockOn;
var
  i : integer;
begin
  for i := 0 to (ComponentCount-1) do
  begin
    if Components[i] is TEdit then
    begin
      TEdit(Components[i]).HitTest := False;
      TEdit(Components[i]).Locked := True;
    end;
    if Components[i] is TDateEdit then
    begin
      TDateEdit(Components[i]).HitTest := False;
      TDateEdit(Components[i]).Locked := True;
    end;
  end;
end;

procedure TFrmCliente.BlockOff;
var
  i : integer;
begin
  for i := 0 to (ComponentCount-1) do
  begin
    if Components[i] is TEdit then
    begin
      TEdit(Components[i]).HitTest := True;
      TEdit(Components[i]).Locked := False;
    end;
//    if Components[i] is TComboBox then
//    begin
//      TDateEdit(Components[i]).HitTest := False;
//      TComboBox(Components[i]).Locked := False;
//    end;
    if Components[i] is TDateEdit then
    begin
      TDateEdit(Components[i]).HitTest := True;
      TDateEdit(Components[i]).Locked := False;
    end;
  end;
end;

procedure TFrmCliente.LimparCampos;
var
  i : integer;
begin
  for i := 0 to (ComponentCount-1) do
  begin
    if Components[i] is TEdit then
      TEdit(Components[i]).Text := '';
    if Components[i] is TComboBox then
      TComboBox(Components[i]).ItemIndex := -1;
  end;
  dtNascimento.Date := Now;
  lblCodigo.Text := '';
end;

procedure TFrmCliente.AddCliente;
begin
  with DM.qryCliente do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=' insert into Cliente(          '+
               '        Cliente_Nome,          '+
               '        Cliente_Email,         '+
               '        Cliente_Fone,          '+
               '        Cliente_Nascimento,    '+
               '        Cliente_Altura,        '+
               '        Cliente_Email,         '+
               '        Cliente_CPF,           '+
               '        Cliente_CEP,           '+
               '        Cliente_Logradouro,    '+
               '        Cliente_Num,           '+
               '        Cliente_Complemento,   '+
               '        Cliente_Bairro,        '+
               '        Cliente_Cidade,        '+
               '        Cliente_UF)            '+
               '  Values(:Cliente_Nome,        '+
               '         :Cliente_Email,       '+
               '         :Cliente_Fone,        '+
               '         :Cliente_Nascimento,  '+
               '         :Cliente_Altura,      '+
               '         :Cliente_Email,       '+
               '         :Cliente_CPF,         '+
               '         :Cliente_CEP,         '+
               '         :Cliente_Logradouro,  '+
               '         :Cliente_Num,         '+
               '         :Cliente_Complemento, '+
               '         :Cliente_Bairro,      '+
               '         :Cliente_Cidade,      '+
               '         :Cliente_UF          )';
    ParamByName('Cliente_Nome'       ).Value := edtNome.Text;
    ParamByName('Cliente_Email'      ).Value := edtEmail.Text;
    ParamByName('Cliente_Fone'       ).Value := edtFone.Text;
    ParamByName('Cliente_Nascimento' ).AssTring := FormatDateTime('yyyy-mm-dd', dtNascimento.Date);
    ParamByName('Cliente_Altura'     ).Value := StrToFloat(edtAltura.Text);
    ParamByName('Cliente_CPF'        ).Value := edtCPF.Text;
    ParamByName('Cliente_CEP'        ).Value := edtCEP.Text;
    ParamByName('Cliente_Logradouro' ).Value := edtEndereco.Text;
    ParamByName('Cliente_Num'        ).Value := edtNumero.Text;
    ParamByName('Cliente_Complemento').Value := edtComplemento.Text;
    ParamByName('Cliente_Bairro'     ).Value := edtBairro.Text;
    ParamByName('Cliente_Cidade'     ).Value := edtCidade.Text;
    ParamByName('Cliente_UF'         ).Value := edtUF.Text;
    ExecSQL;
//    ListarClientes;
  end;
end;

procedure TFrmCliente.rectBuscaClick(Sender: TObject);
begin
  ConsultarCEP(edtCEP.Text);
end;

procedure TFrmCliente.AlterCliente;
begin
  with DM.qryCliente do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=' Update Cliente set                                '+
               '        Cliente_Email      = :Cliente_Email,       '+
               '        Cliente_Fone       = :Cliente_Fone,        '+
               '        Cliente_Nascimento = :Cliente_Nascimento,  '+
               '        Cliente_Altura     = :Cliente_Altura,      '+
               '        Cliente_Email      = :Cliente_Email,       '+
               '        Cliente_CPF        = :Cliente_CPF,         '+
               '        Cliente_CEP        = :Cliente_CEP,         '+
               '        Cliente_Logradouro = :Cliente_Logradouro,  '+
               '        Cliente_Num        = :Cliente_Num,         '+
               '        Cliente_Complemento= :Cliente_Complemento, '+
               '        Cliente_Bairro     = :Cliente_Bairro,      '+
               '        Cliente_Cidade     = :Cliente_Cidade,      '+
               '        Cliente_UF         = :Cliente_UF           '+
               '  Where Cliente_ID         = :Cliente_ID           ';
    ParamByName('Cliente_ID'         ).Value := lblCodigo.Text;
    ParamByName('Cliente_Email'      ).Value := edtEmail.Text;
    ParamByName('Cliente_Fone'       ).Value := edtFone.Text;
    ParamByName('Cliente_Nascimento' ).AssTring := FormatDateTime('yyyy-mm-dd', dtNascimento.Date);
    ParamByName('Cliente_Altura'     ).Value := StrToFloat(edtAltura.Text);
    ParamByName('Cliente_CPF'        ).Value := edtCPF.Text;
    ParamByName('Cliente_CEP'        ).Value := edtCEP.Text;
    ParamByName('Cliente_Logradouro' ).Value := edtEndereco.Text;
    ParamByName('Cliente_Num'        ).Value := edtNumero.Text;
    ParamByName('Cliente_Complemento').Value := edtComplemento.Text;
    ParamByName('Cliente_Bairro'     ).Value := edtBairro.Text;
    ParamByName('Cliente_Cidade'     ).Value := edtCidade.Text;
    ParamByName('Cliente_UF'         ).Value := edtUF.Text;
    ExecSQL;
//    ListarClientes;
  end;
end;

procedure TFrmCliente.btnMenuClick(Sender: TObject);
begin
  rectForm.Opacity := 0.3;
  cbNome.HitTest := False;
  cbNome.Locked := True;
  rectMenu.Visible := True;
end;

procedure TFrmCliente.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCliente.btnCancelClick(Sender: TObject);
begin
  edtNome.Visible := False;
  LimparCampos;
  ListarClientes;
  btnCancel.Visible := False;
  btnConfirm.Visible := False;
  btnMenu.Visible := True;
  BlockOn;
end;

procedure TFrmCliente.btnConfirmClick(Sender: TObject);
begin
  if AddCli then
    AddCliente
  else
    AlterCliente;
  LimparCampos;
  ListarClientes;
  cbNome.Visible := True;
  edtNome.Visible := False;
  btnCancel.Visible := False;
  btnConfirm.Visible := False;
  btnMenu.Visible := True;
  BlockOn;
end;

procedure TFrmCliente.btnMenuAddClick(Sender: TObject);
begin
  BlockOff;
  LimparCampos;
  dtNascimento.Date := Now;
  cbNome.Visible := False;
  edtNome.Visible := True;
  btnCancel.Visible := True;
  btnConfirm.Visible := True;
  btnMenu.Visible := False;
  rectForm.Opacity := 1;
  rectMenu.Visible := False;
  AddCli := True;
end;

procedure TFrmCliente.btnMenuAlterClick(Sender: TObject);
begin
  if lblCodigo.Text <> '' then
  begin
    BlockOff;
    edtNome.SetFocus;
    btnCancel.Visible := True;
    btnConfirm.Visible := True;
    btnMenu.Visible := False;
    rectForm.Opacity := 1;
    rectMenu.Visible := False;
    AddCli := False;
  end
  else
  begin
    ShowMessage('Selecione cliente.');
  end;
end;

procedure TFrmCliente.btnMenuDelClick(Sender: TObject);
begin
  if lblCodigo.Text <> '' then
  begin
    DelCliente;
    btnMenu.Visible := True;
    rectForm.Opacity := 1;
    rectMenu.Visible := False;
    AddCli := False;
    ListarClientes;
  end
  else
  begin
    ShowMessage('Selecione cliente.');
  end;
end;

procedure TFrmCliente.cbNomeChange(Sender: TObject);
begin
  if cbNome.ItemIndex > -1 then
    with DM do
    begin
      qryCliente.First;
      while not qryCliente.Eof do
      begin
        if qryCliente.Locate('Cliente_nome', cbNome.Text,[]) then
        begin
          lblCodigo.Text      := FormatFloat('000', qryCliente.FieldByName('Cliente_ID').AsInteger);
          edtEmail.Text       := qryCliente.FieldByName('Cliente_Email'      ).AsString;
          edtFone.Text        := qryCliente.FieldByName('Cliente_Fone'       ).AsString;
          dtNascimento.Date   := qryCliente.FieldByName('Cliente_Nascimento' ).AsDateTime;
          edtAltura.Text      := qryCliente.FieldByName('Cliente_Altura'     ).AsString;
          edtEmail.Text       := qryCliente.FieldByName('Cliente_Email'      ).AsString;
          edtCPF.Text         := qryCliente.FieldByName('Cliente_CPF'        ).AsString;
          edtCEP.Text         := qryCliente.FieldByName('Cliente_CEP'        ).AsString;
          edtEndereco.Text    := qryCliente.FieldByName('Cliente_Logradouro' ).AsString;
          edtNumero.Text      := qryCliente.FieldByName('Cliente_Num'        ).AsString;
          edtComplemento.Text := qryCliente.FieldByName('Cliente_Complemento').AsString;
          edtBairro.Text      := qryCliente.FieldByName('Cliente_Bairro'     ).AsString;
          edtCidade.Text      := qryCliente.FieldByName('Cliente_Cidade'     ).AsString;
          edtUF.Text          := qryCliente.FieldByName('Cliente_UF'         ).AsString;
          Exit;
        end;
        qryCliente.Next;
      end;
    end
  else
  begin
    LimparCampos;
  end;
end;

procedure TFrmCliente.cbNomeExit(Sender: TObject);
begin
//  GlyphCancel.ImageIndex := 3;
end;

procedure TFrmCliente.btnMenuSairClick(Sender: TObject);
begin
  rectForm.Opacity := 1;
  cbNome.HitTest := True;
  cbNome.Locked := False;
  cbNome.Visible := True;
  rectMenu.Visible := False;
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

procedure TFrmCliente.DelCliente;
begin
  if lblCodigo.Text<> '' then
  begin
    with DM.qryCliente do
    begin
      Close;
      SQL.Clear;
      SQL.Text:= 'Delete From Cliente where Cliente_ID = ' + lblCodigo.Text;
      ExecSQL;
    end;
//    ListarClientes;
    lblCodigo.Text := '';
  end
  else
  begin
    ShowMessage('Selecione cliente.');
  end;
end;

end.
