unit ReservaEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, IB_Controls, IB_Grid, Vcl.Mask,
  IB_EditButton;

type
  TfmReservaEditor = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_Edit3: TIB_Edit;
    IB_LookupCombo4: TIB_LookupCombo;
    IB_Date1: TIB_Date;
    IB_Edit4: TIB_Edit;
    IB_Edit5: TIB_Edit;
    IB_Edit6: TIB_Edit;
    IB_Edit7: TIB_Edit;
    IB_Memo1: TIB_Memo;
    IB_CheckBox1: TIB_CheckBox;
    Clientes: TIB_Query;
    SourceClientes: TIB_DataSource;
    Produtos: TIB_Query;
    SourceProdutos: TIB_DataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
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
  fmReservaEditor: TfmReservaEditor;

implementation

{$R *.dfm}

Uses
  ProdutosGrid, CliForGrid;

procedure TfmReservaEditor.FormCreate(Sender: TObject);
begin
  inherited;
  Clientes.Open();
  Produtos.Open();
end;

procedure TfmReservaEditor.IB_DataSource1DataChange(Sender: TIB_StatementLink;
  Statement: TIB_Statement; Field: TIB_Column);
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

procedure TfmReservaEditor.SpeedButton1Click(Sender: TObject);
var F : TfmCliForGrid;
begin
  F := TfmCliForGrid.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
    Clientes.Refresh;
  End;

end;

procedure TfmReservaEditor.SpeedButton2Click(Sender: TObject);
Var F : TfmProdutosGrid;
begin
  F := TfmProdutosGrid.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
    Produtos.Refresh;
  End;
end;

end.
