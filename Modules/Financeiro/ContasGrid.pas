unit ContasGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmContasGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContasGrid: TfmContasGrid;

implementation

uses ContasEditor;

{$R *.dfm}

procedure TfmContasGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmContasEditor;
  inherited;
end;

end.
