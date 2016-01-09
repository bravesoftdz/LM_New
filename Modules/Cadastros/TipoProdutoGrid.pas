unit TipoProdutoGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmTipoProdutoGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTipoProdutoGrid: TfmTipoProdutoGrid;

implementation

{$R *.dfm}

uses
TipoProdutoEditor;

procedure TfmTipoProdutoGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmTipoProdutoEditor;
  inherited;
end;

end.
