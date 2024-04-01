unit UnitBioimpedancia;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FMX.Layouts, FMX.Edit,
  FMX.Ani, FMX.DateTimeCtrls, FMX.TabControl, System.ImageList, FMX.ImgList,
  FMX.VirtualKeyboard, FMX.Platform;

type
  TFrmBiomimpedancia = class(TForm)
    rectTit: TRectangle;
    lblTit: TLabel;
    Image1: TImage;
    Image5: TImage;
    rectCliente: TRectangle;
    cbCliente: TComboBox;
    lytCabecalho: TLayout;
    rectAcc: TRectangle;
    Rectangle2: TRectangle;
    recRodape: TRectangle;
    Rectangle18: TRectangle;
    SpeedButton1: TSpeedButton;
    Label11: TLabel;
    Rectangle20: TRectangle;
    Rectangle21: TRectangle;
    Rectangle23: TRectangle;
    Rectangle24: TRectangle;
    Rectangle25: TRectangle;
    Rectangle26: TRectangle;
    Label13: TLabel;
    Label14: TLabel;
    Rectangle27: TRectangle;
    Rectangle28: TRectangle;
    Rectangle29: TRectangle;
    Rectangle30: TRectangle;
    Label15: TLabel;
    Label16: TLabel;
    lblTitDoPGC: TLabel;
    Label18: TLabel;
    edtAmgMME: TEdit;
    edtAmgMGC: TEdit;
    edtDoIMC: TEdit;
    edtDoPGC: TEdit;
    edtDoRCQ: TEdit;
    Rectangle31: TRectangle;
    Rectangle32: TRectangle;
    Label19: TLabel;
    Label20: TLabel;
    Rectangle33: TRectangle;
    Rectangle34: TRectangle;
    Label21: TLabel;
    Rectangle35: TRectangle;
    Rectangle36: TRectangle;
    Label22: TLabel;
    Rectangle37: TRectangle;
    Rectangle38: TRectangle;
    Label23: TLabel;
    Label24: TLabel;
    Rectangle39: TRectangle;
    Rectangle40: TRectangle;
    Label25: TLabel;
    Rectangle41: TRectangle;
    Rectangle42: TRectangle;
    Label26: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    DateEdit1: TDateEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label27: TLabel;
    Rectangle55: TRectangle;
    Edit14: TEdit;
    TabControl: TTabControl;
    tbBio: TTabItem;
    tbSegmentar: TTabItem;
    Rectangle49: TRectangle;
    Rectangle50: TRectangle;
    Label31: TLabel;
    edtCpPeso: TEdit;
    Label32: TLabel;
    Rectangle51: TRectangle;
    Rectangle52: TRectangle;
    Label33: TLabel;
    edtCpMuscular: TEdit;
    Rectangle53: TRectangle;
    Rectangle54: TRectangle;
    Label34: TLabel;
    edtCpGordura: TEdit;
    rectMassaMagra: TRectangle;
    Image4: TImage;
    rectGordura: TRectangle;
    Image6: TImage;
    Label36: TLabel;
    Label35: TLabel;
    Layout3: TLayout;
    Layout4: TLayout;
    Edit15: TEdit;
    Layout5: TLayout;
    Label37: TLabel;
    ComboBox2: TComboBox;
    Layout6: TLayout;
    Layout7: TLayout;
    Layout8: TLayout;
    Edit16: TEdit;
    Label38: TLabel;
    ComboBox12: TComboBox;
    Layout9: TLayout;
    Layout10: TLayout;
    Edit17: TEdit;
    Label39: TLabel;
    ComboBox13: TComboBox;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    Edit18: TEdit;
    Label40: TLabel;
    ComboBox14: TComboBox;
    Layout14: TLayout;
    Layout15: TLayout;
    Edit19: TEdit;
    Label41: TLabel;
    ComboBox15: TComboBox;
    Layout16: TLayout;
    Layout21: TLayout;
    Layout24: TLayout;
    Layout25: TLayout;
    Layout26: TLayout;
    Edit26: TEdit;
    Label45: TLabel;
    ComboBox19: TComboBox;
    Label47: TLabel;
    Z: TLabel;
    lblDireita: TLabel;
    Layout29: TLayout;
    Edit28: TEdit;
    Label48: TLabel;
    Layout27: TLayout;
    Layout28: TLayout;
    Edit27: TEdit;
    Label46: TLabel;
    ComboBox20: TComboBox;
    Layout30: TLayout;
    Edit29: TEdit;
    Label49: TLabel;
    Layout17: TLayout;
    Layout18: TLayout;
    Edit20: TEdit;
    Label42: TLabel;
    ComboBox16: TComboBox;
    Layout19: TLayout;
    Edit21: TEdit;
    Label43: TLabel;
    Layout20: TLayout;
    Layout22: TLayout;
    Edit22: TEdit;
    Label44: TLabel;
    ComboBox17: TComboBox;
    Layout23: TLayout;
    Edit30: TEdit;
    Label50: TLabel;
    Layout31: TLayout;
    Layout32: TLayout;
    Edit31: TEdit;
    Label51: TLabel;
    ComboBox18: TComboBox;
    Layout33: TLayout;
    Edit32: TEdit;
    Label52: TLabel;
    lblesquerda: TLabel;
    Circle2: TCircle;
    Image7: TImage;
    Rectangle56: TRectangle;
    Label2: TLabel;
    ImageList: TImageList;
    rectAddBio: TRectangle;
    Glyph: TGlyph;
    lblCodigo: TLabel;
    StyleBook1: TStyleBook;
    Label1: TLabel;
    lblDoIMC: TLabel;
    lblDoPGC: TLabel;
    lblDORCQ: TLabel;
    Label3: TLabel;
    lytACCTop: TLayout;
    lytACCBottom: TLayout;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Label4: TLabel;
    edtAccTBW: TEdit;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Label5: TLabel;
    edtaccProteina: TEdit;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Label6: TLabel;
    edtAccMinerais: TEdit;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Label7: TLabel;
    edtAccMGC: TEdit;
    Rectangle11: TRectangle;
    Layout34: TLayout;
    edtAccMassaMagraO: TEdit;
    Label53: TLabel;
    Layout35: TLayout;
    edtAccMassaMagraNO: TEdit;
    �sseo: TLabel;
    Rectangle12: TRectangle;
    Label8: TLabel;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Label9: TLabel;
    edtAccMLG: TEdit;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Label10: TLabel;
    edtAccPeso: TEdit;
    rectDO: TRectangle;
    rectAMG: TRectangle;
    rectGP: TRectangle;
    rectCP: TRectangle;
    rectAN: TRectangle;
    lytRodape: TLayout;
    lytACC: TLayout;
    lytAMG: TLayout;
    lytAN: TLayout;
    lytCP: TLayout;
    lytDO: TLayout;
    lytGP: TLayout;
    lbBio: TListBox;
    lbiACC: TListBoxItem;
    lbiAMG: TListBoxItem;
    lbiAN: TListBoxItem;
    lbiCP: TListBoxItem;
    lbiDO: TListBoxItem;
    lbiGP: TListBoxItem;
    lbSeg: TListBox;
    lbiMassaMagra: TListBoxItem;
    lbiGordura: TListBoxItem;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtAccTBWChange(Sender: TObject);
    procedure GlyphChanged(Sender: TObject);
    procedure edtDoIMCExit(Sender: TObject);
    procedure edtDoPGCExit(Sender: TObject);
    procedure edtDoRCQExit(Sender: TObject);
    procedure edtDoRCQKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: WideChar; Shift: TShiftState);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
  private
    Foco : TControl;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBiomimpedancia: TFrmBiomimpedancia;

implementation

{$R *.fmx}

procedure TFrmBiomimpedancia.edtAccTBWChange(Sender: TObject);
begin
  Glyph.ImageIndex := 1;
end;

procedure TFrmBiomimpedancia.edtDoIMCExit(Sender: TObject);
begin
  if edtDoIMC.Text <> '' then
    if StrToFloat(edtDoIMC.Text) < 18.5 then
      lblDoIMC.Text := 'Abaixo'
    else
    if (StrToFloat(edtDoIMC.Text) >= 18.5) and (StrToFloat(edtDoIMC.Text) <= 25) then
      lblDoIMC.Text := 'Normal'
    else
      lblDoIMC.Text := 'Acima';
end;

procedure TFrmBiomimpedancia.edtDoPGCExit(Sender: TObject);
begin
  if edtDoPGC.Text <> '' then
    if StrToFloat(edtDoPGC.Text) < 10 then
      lblDoPGC.Text := 'Abaixo'
    else
    if (StrToFloat(edtDoPGC.Text) >= 10) and (StrToFloat(edtDoPGC.Text) <= 20) then
      lblDoPGC.Text := 'Normal'
    else
      lblDoPGC.Text := 'Acima';
end;

procedure TFrmBiomimpedancia.edtDoRCQExit(Sender: TObject);
begin
  if edtDoRCQ.Text <> '' then
    if StrToFloat(edtDoRCQ.Text) < 0.8 then
      lblDoRCQ.Text := 'Abaixo'
    else
    if (StrToFloat(edtDoRCQ.Text) >= 0.8) and (StrToFloat(edtDoRCQ.Text) <= 0.9) then
      lblDORCQ.Text := 'Normal'
    else
      lblDORCQ.Text := 'Acima';
end;

procedure TFrmBiomimpedancia.edtDoRCQKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: WideChar; Shift: TShiftState);
begin
  if KeyChar = #46 then
    keychar := #44;
end;

procedure TFrmBiomimpedancia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
  FrmBiomimpedancia := nil;
end;

procedure TFrmBiomimpedancia.FormCreate(Sender: TObject);
begin
  TabControl.GotoVisibleTab(0);
  rectMassaMagra.Height := TabControl.Height / 2;
  rectGordura.Height := rectMassaMagra.Height - 15;
end;

procedure TFrmBiomimpedancia.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  tabcontrol.Margins.Bottom := 0;
end;

procedure TFrmBiomimpedancia.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  if TabControl.TabIndex = 0 then
    tabcontrol.Margins.Bottom := 90
  else
    tabcontrol.Margins.Bottom := 300;
end;

procedure TFrmBiomimpedancia.GlyphChanged(Sender: TObject);
begin
  if Glyph.ImageIndex = 0 then
    Glyph.ImageIndex := 1
  else
    Glyph.ImageIndex := 0;
end;

procedure TFrmBiomimpedancia.Image5Click(Sender: TObject);
begin
  if TabControl.TabIndex = 0 then
    close
  else
    TabControl.GotoVisibleTab(0);
end;

procedure TFrmBiomimpedancia.SpeedButton1Click(Sender: TObject);
begin
  TabControl.GotoVisibleTab(1);
end;

end.
