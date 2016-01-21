unit ProdutosEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ColorGrd, IB_Grid, Vcl.Mask,
  IB_EditButton, IB_Controls, Vcl.ExtDlgs, Vcl.Imaging.jpeg;

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
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Foto: TImage;
    PictureDialog: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
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
MarcasGrid, TipoProdutoGrid, DB;

procedure TfmProdutosEditor.FormCreate(Sender: TObject);
begin
  inherited;
  Marca.Open();
  Tipo.Open();
end;

procedure TfmProdutosEditor.FormShow(Sender: TObject);
begin
  if not IB_Query1.FieldByName('FOTO').IsNull then
    IB_Query1.FieldByName('FOTO').AssignTo(Foto.Picture.Graphic);
  inherited;
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

procedure TfmProdutosEditor.SpeedButton3Click(Sender: TObject);
begin
  if PictureDialog.Execute then begin
    Foto.Picture.LoadFromFile(PictureDialog.FileName);
    IB_Query1.FieldByName('FOTO').Assign(Foto.Picture.Graphic);
  end;
end;

procedure TfmProdutosEditor.SpeedButton4Click(Sender: TObject);
begin
  foto.Picture := nil;
  IB_Query1.FieldByName('FOTO').Clear;
end;

procedure TfmProdutosEditor.SpeedButton5Click(Sender: TObject);
var
  Save: TSaveDialog;
  Arquivo: String;
begin
  Save := TSaveDialog.Create(nil);
  Save.Filter := 'jpg';
  Save.DefaultExt := 'jpg';
  if Save.Execute then begin
    Arquivo := Save.FileName;
    Foto.Picture.SaveToFile(Arquivo + 'aaaaaaaa.jpg');
  end;
  Save.Free;
end;

end.
