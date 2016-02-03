unit RequisicaoEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, IB_Grid, IB_Controls, Vcl.StdCtrls, Vcl.Mask,
  IB_EditButton;

type
  TfmRequisicaoEditor = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_Edit3: TIB_Edit;
    IB_Date1: TIB_Date;
    IB_Date2: TIB_Date;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_LookupCombo3: TIB_LookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    IB_Edit4: TIB_Edit;
    IB_Edit5: TIB_Edit;
    IB_Edit6: TIB_Edit;
    Produto: TIB_Query;
    SourceProduto: TIB_DataSource;
    SourceFornecedor: TIB_DataSource;
    Fornecedor: TIB_Query;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure IB_DataSource1DataChange(Sender: TIB_StatementLink;
      Statement: TIB_Statement; Field: TIB_Column);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRequisicaoEditor: TfmRequisicaoEditor;

implementation

{$R *.dfm}

uses
  ProdutosGrid, CliForGrid;

procedure TfmRequisicaoEditor.FormCreate(Sender: TObject);
begin
  inherited;
  Produto.Open();
  Fornecedor.Open();
end;

procedure TfmRequisicaoEditor.IB_DataSource1DataChange(
  Sender: TIB_StatementLink; Statement: TIB_Statement; Field: TIB_Column);
begin
  with IB_Query1 do begin
    if ((Field = FieldByName('QUANTIDADE')) or (Field = FieldByName('VALOR_UNITARIO'))) then
      if ((FieldByName('QUANTIDADE').AsFloat > 0)
      and (FieldByName('VALOR_UNITARIO').AsFloat > 0)) then
        FieldByName('VALOR_TOTAL').AsFloat := FieldByName('QUANTIDADE').AsFloat * FieldByName('VALOR_UNITARIO').AsFloat
      else
        FieldByName('VALOR_TOTAL').AsFloat := 0;
  end;
end;

procedure TfmRequisicaoEditor.SpeedButton1Click(Sender: TObject);
var F : TfmProdutosGrid;
begin
  F := TfmProdutosGrid.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
    Produto.Refresh
  End;
end;

procedure TfmRequisicaoEditor.SpeedButton2Click(Sender: TObject);
var F : TfmCliForGrid;
begin
  F := TfmCliForGrid.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
    Fornecedor.Refresh;
  End;
end;

end.
