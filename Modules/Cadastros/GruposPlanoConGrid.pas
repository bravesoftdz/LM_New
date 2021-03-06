unit GruposPlanoConGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmGrupoPlanoConGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGrupoPlanoConGrid: TfmGrupoPlanoConGrid;

implementation

{$R *.dfm}

uses
GruposPlanoConEditor;

procedure TfmGrupoPlanoConGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmGrupoPlanoConEditor;
  inherited;
end;

end.
