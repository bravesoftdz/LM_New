unit EstoqueGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmEstoqueGrid = class(TfmFormGrid)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEstoqueGrid: TfmEstoqueGrid;

implementation

{$R *.dfm}

end.