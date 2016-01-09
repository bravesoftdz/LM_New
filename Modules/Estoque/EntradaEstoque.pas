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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
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

end.
