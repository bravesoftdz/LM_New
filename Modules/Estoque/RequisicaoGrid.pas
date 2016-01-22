unit RequisicaoGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmRequisicaoGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRequisicaoGrid: TfmRequisicaoGrid;

implementation

{$R *.dfm}

Uses
  RequisicaoEditor;

procedure TfmRequisicaoGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmRequisicaoEditor;
  inherited;
end;

end.
