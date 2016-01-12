unit ContasPagarGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmContasPagarGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContasPagarGrid: TfmContasPagarGrid;

implementation

uses ContasPagarEditor;

{$R *.dfm}

procedure TfmContasPagarGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmContasPagarEditor;
  inherited;
end;

end.
