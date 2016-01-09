unit TipoEntradaEstoqueGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmTipoEstradaEstoqueGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTipoEstradaEstoqueGrid: TfmTipoEstradaEstoqueGrid;

implementation

{$R *.dfm}

uses
TipoEntradaEstoqueEditor;

procedure TfmTipoEstradaEstoqueGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmTipoEntradaEstoqueEditor;
  inherited;
end;

end.
