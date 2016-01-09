unit ProdutosEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ColorGrd, IB_Grid, Vcl.Mask,
  IB_EditButton, IB_Controls;

type
  TfmProdutosEditor = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_Edit3: TIB_Edit;
    IB_Edit4: TIB_Edit;
    IB_Edit5: TIB_Edit;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_Edit6: TIB_Edit;
    SpeedButton1: TSpeedButton;
    Marca: TIB_Query;
    SourceMarcas: TIB_DataSource;
    IB_Edit7: TIB_Edit;
    IB_LookupCombo3: TIB_LookupCombo;
    SpeedButton2: TSpeedButton;
    Tipo: TIB_Query;
    SourceTipo: TIB_DataSource;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProdutosEditor: TfmProdutosEditor;

implementation

{$R *.dfm}

Uses
MarcasGrid, TipoProdutoGrid;

procedure TfmProdutosEditor.FormCreate(Sender: TObject);
begin
  inherited;
  Marca.Open();
  Tipo.Open();
end;

procedure TfmProdutosEditor.SpeedButton1Click(Sender: TObject);
var F : TfmMarcasGrid;
begin
  F := TfmMarcasGrid.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
    Marca.Refresh;
  End;
end;

procedure TfmProdutosEditor.SpeedButton2Click(Sender: TObject);
var F : TfmTipoProdutoGrid;
begin
  F := TfmTipoProdutoGrid.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
    Tipo.Refresh;
  End;
end;

end.
