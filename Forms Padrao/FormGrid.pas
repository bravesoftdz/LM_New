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
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFormEditor : TFormularioEditor;
  public
    { Public declarations }
    property FormEditor : TFormularioEditor read  FFormEditor write FFormEditor;
  end;

var
  fmFormGrid: TfmFormGrid;

implementation

{$R *.dfm}

procedure TfmFormGrid.btnAlterarClick(Sender: TObject);
var F : TfmFormEditor;
begin
  F := TfmFormEditor.Create(Self);
  try
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
  if Application.MessageBox('Deseja realmente excluir o item selecionado?','Confirma',36)=idyes then
    IB_Query1.Delete;
end;

procedure TfmFormGrid.btnIncluirClick(Sender: TObject);
var F : TfmFormEditor;
begin
  F := FFormEditor.Create(Self);
  try
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
  IB_Query1.Open();
end;

end.
