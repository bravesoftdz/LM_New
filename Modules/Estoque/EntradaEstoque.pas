unit EntradaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Sis.Classes, Vcl.StdCtrls, Vcl.Mask, IB_EditButton,
  IB_Controls, Vcl.Grids, IB_Grid;

type
  TfmEntradaEstoque = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    GroupBox1: TGroupBox;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_Grid1: TIB_Grid;
    Clifor: TIB_Query;
    srcClifor: TIB_DataSource;
    Itens: TIB_Query;
    GridItens: TIB_Grid;
    IB_Edit3: TIB_Edit;
    IB_LookupCombo2: TIB_LookupCombo;
    IB_Grid2: TIB_Grid;
    srcItens: TIB_DataSource;
    IB_Edit4: TIB_Edit;
    IB_Edit5: TIB_Edit;
    IB_Edit6: TIB_Edit;
    IB_Date1: TIB_Date;
    IB_Date2: TIB_Date;
    procedure IB_Query1BeforePost(IB_Dataset: TIB_Dataset);
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
