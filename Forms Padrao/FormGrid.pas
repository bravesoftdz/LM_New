unit FormGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormPadrao, Vcl.Grids, IB_Grid,
  Vcl.ExtCtrls, IB_Components, IB_Access, Vcl.Buttons, FormEditor;

type
  TfmFormGrid = class(TfmFormPadrao)
    pnlControles: TPanel;
    IB_Grid1: TIB_Grid;
    IB_Query1: TIB_Query;
    IB_DataSource1: TIB_DataSource;
    btnIncluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisar: TSpeedButton;
    pnlBotao: TPanel;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IB_Grid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FFormEditor : TFormularioEditor;
  public
    { Public declarations }
    property FormEditor : TFormularioEditor read  FFormEditor write FFormEditor;
    procedure LocateField(Campo: String; Valor: Variant);
  end;

var
  fmFormGrid: TfmFormGrid;

implementation

{$R *.dfm}

procedure TfmFormGrid.btnAlterarClick(Sender: TObject);
var F : TfmFormEditor;
begin
  if FFormEditor = nil then
     raise Exception.Create('Nem um formulario de edição foi declarado');

  F := FFormEditor.Create(Self);
  try
    if Trim(F.IB_Query1.EditSQL.Text) = '' then
      raise Exception.Create('Não foi declarado SQL para edição!');

    F.IB_Query1.ParamByName('codigo').AsInteger := IB_Query1.FieldByName('codigo').AsInteger;
    F.IB_Query1.Open;
    F.IB_Query1.Edit;
    F.ShowModal;
  finally
    F.Free;
    IB_Query1.Refresh;
  end;
end;

procedure TfmFormGrid.btnExcluirClick(Sender: TObject);
begin
  if Trim(IB_Query1.DeleteSQL.Text) = '' then
    raise Exception.Create('Não foi declarado SQL para delete!');

  if Application.MessageBox('Deseja realmente excluir o item selecionado?','Confirma',36)=idyes then
    IB_Query1.Delete;
end;

procedure TfmFormGrid.btnIncluirClick(Sender: TObject);
var F : TfmFormEditor;
begin
  if FFormEditor = nil then
     raise Exception.Create('Nem um formulario de edição foi declarado');

  F := FFormEditor.Create(Self);
  try
    if Trim(F.IB_Query1.InsertSQL.Text) = '' then
      raise Exception.Create('Não foi declarado SQL para insert!');
    F.IB_Query1.Insert;
    F.IB_Query1.FieldByName('codigo').AsInteger := 0;
    F.ShowModal;
  finally
    F.Free;
    IB_Query1.Refresh;
  end;
end;

procedure TfmFormGrid.FormCreate(Sender: TObject);
begin
  inherited;
  if Trim(IB_Query1.SQL.Text) = '' then
    raise Exception.Create('Não é possível preparar um DataSet em branco!');

  IB_Query1.Open();
end;

procedure TfmFormGrid.FormShow(Sender: TObject);
var J : Integer;
begin
  inherited;
  //Função para alinhar a panel
  J := (pnlControles.Width - pnlBotao.Width);
  J :=  Trunc(J / 2);
  pnlBotao.Left := J;
end;

procedure TfmFormGrid.IB_Grid1DblClick(Sender: TObject);
begin
  inherited;
  btnAlterar.Click;
end;

procedure TfmFormGrid.LocateField(Campo: String; Valor: Variant);
begin
  if (IB_Query1.FindField(Campo) <> nil) then
    IB_Query1.Locate(Campo, Valor, []);
end;

end.
