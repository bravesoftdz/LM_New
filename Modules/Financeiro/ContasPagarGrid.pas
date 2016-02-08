unit ContasPagarGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmContasPagarGrid = class(TfmFormGrid)
    BtnQuitar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnQuitarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContasPagarGrid: TfmContasPagarGrid;

implementation

uses ContasPagarEditor, QuitacaoConta;

{$R *.dfm}

procedure TfmContasPagarGrid.BtnQuitarClick(Sender: TObject);
var F : TQuitacao;
begin
  F := TQuitacao.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
  End;
end;

procedure TfmContasPagarGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmContasPagarEditor;
  inherited;
end;

end.
