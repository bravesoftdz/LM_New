unit MarcasGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmMarcasGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMarcasGrid: TfmMarcasGrid;

implementation

{$R *.dfm}

uses
MarcasEditor;

procedure TfmMarcasGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmMarcasEditor;
  inherited;
end;

end.
