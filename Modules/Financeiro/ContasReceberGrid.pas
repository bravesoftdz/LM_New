unit ContasReceberGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmContasReceberGrid = class(TfmFormGrid)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContasReceberGrid: TfmContasReceberGrid;

implementation

uses ContasReceberEditor;

{$R *.dfm}

procedure TfmContasReceberGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmContasReceberEditor;
  inherited;
end;

end.
