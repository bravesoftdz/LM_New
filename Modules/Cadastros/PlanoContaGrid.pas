unit PlanoContaGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmPlanoConGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPlanoConGrid: TfmPlanoConGrid;

implementation

{$R *.dfm}

uses
PlanoContaEditor;
procedure TfmPlanoConGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmPlanoConEditor;
  inherited;
end;

end.
