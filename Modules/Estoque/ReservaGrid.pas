unit ReservaGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmReservaGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmReservaGrid: TfmReservaGrid;

implementation

{$R *.dfm}

uses
  ReservaEditor;

procedure TfmReservaGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmReservaEditor;
  inherited;
end;

end.
