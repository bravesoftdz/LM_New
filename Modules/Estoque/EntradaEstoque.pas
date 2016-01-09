unit EntradaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Sis.Classes, Vcl.StdCtrls, Vcl.Mask, IB_EditButton,
  IB_Controls, Vcl.Grids, IB_Grid, Vcl.ComCtrls;

type
  TfmEntradaEstoque = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    Clifor: TIB_Query;
    srcClifor: TIB_DataSource;
    IB_Edit7: TIB_Edit;
    IB_LookupCombo3: TIB_LookupCombo;
    GroupBox2: TGroupBox;
    IB_Edit2: TIB_Edit;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_Edit9: TIB_Edit;
    IB_Edit10: TIB_Edit;
    IB_Edit12: TIB_Edit;
    Produtos: TIB_Query;
    SourceProdutos: TIB_DataSource;
    IB_Edit8: TIB_Edit;
    IB_LookupCombo4: TIB_LookupCombo;
    TipoMovimentos: TIB_Query;
    SourceTipoMovimento: TIB_DataSource;
    IB_Date1: TIB_Date;
    IB_DateTimePicker1: TIB_DateTimePicker;
    procedure IB_Query1BeforePost(IB_Dataset: TIB_Dataset);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FMovEstoque : TMovEstoque;
    function GetMovEstoque: TMovEstoque;
    procedure SetMovEstoque(const Value: TMovEstoque);
  public
    { Public declarations }
    property MovEstoque : TMovEstoque read GetMovEstoque write SetMovEstoque;
  end;

var
  fmEntradaEstoque: TfmEntradaEstoque;

implementation

{$R *.dfm}

procedure TfmEntradaEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  Clifor.Open();
  TipoMovimentos.Open();
  Produtos.Open();
end;

function TfmEntradaEstoque.GetMovEstoque: TMovEstoque;
begin
  Result := FMovEstoque;
end;

procedure TfmEntradaEstoque.IB_Query1BeforePost(IB_Dataset: TIB_Dataset);
begin
  if FMovEstoque = meEntrada then
  begin
    IB_Query1.FieldByName('tipo').AsInteger := 1;
    IB_Edit1.AutoLabel.Caption := 'Fornecedor';
  end
  else if FMovEstoque = meSaida then
  begin
    IB_Query1.FieldByName('tipo').AsInteger := 2;
    IB_Edit1.AutoLabel.Caption := 'Cliente';
  end
  else if FMovEstoque = meLocacao then
  begin
    IB_Query1.FieldByName('tipo').AsInteger := 3;
    IB_Edit1.AutoLabel.Caption := 'Locador';
  end;

  inherited;
end;

procedure TfmEntradaEstoque.SetMovEstoque(const Value: TMovEstoque);
begin
  FMovEstoque := Value;
end;

end.
