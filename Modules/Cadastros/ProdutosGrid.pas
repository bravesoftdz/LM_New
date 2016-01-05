unit ProdutosGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmProdutosGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProdutosGrid: TfmProdutosGrid;

implementation

{$R *.dfm}

uses
ProdutosEditor;
procedure TfmProdutosGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmProdutosEditor;
  inherited;
end;

end.
