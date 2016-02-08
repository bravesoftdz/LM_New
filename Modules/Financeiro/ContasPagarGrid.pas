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
  if IB_Query1.FieldByName('data_pagrec').AsDate > 0 then
    raise Exception.Create('Essa conta ja está quitada!');

  F := TQuitacao.Create(Self);
  Try
    F.CodConta := IB_Query1.FieldByName('codigo').AsInteger;
    F.xValor := IB_Query1.FieldByName('valor').AsFloat;
    F.ShowModal;
  Finally
    F.Free;
    IB_Query1.Refresh;
  End;
end;

procedure TfmContasPagarGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmContasPagarEditor;
  inherited;
end;

end.
