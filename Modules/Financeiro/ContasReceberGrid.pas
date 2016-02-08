unit ContasReceberGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmContasReceberGrid = class(TfmFormGrid)
    BtnQuitar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnQuitarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContasReceberGrid: TfmContasReceberGrid;

implementation

uses ContasReceberEditor, QuitacaoConta;

{$R *.dfm}

procedure TfmContasReceberGrid.BtnQuitarClick(Sender: TObject);
var F : TQuitacao;
begin
  F := TQuitacao.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
  End;
end;

procedure TfmContasReceberGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmContasReceberEditor;
  inherited;
end;

end.
