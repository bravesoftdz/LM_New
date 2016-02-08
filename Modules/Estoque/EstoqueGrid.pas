unit EstoqueGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls, Sis.Classes;

type
  TfmEstoqueGrid = class(TfmFormGrid)
    btnEntrada: TSpeedButton;
    btnSaida: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSaidaClick(Sender: TObject);
    procedure btnEntradaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEstoqueGrid: TfmEstoqueGrid;

implementation

{$R *.dfm}

uses
  EntradaEstoque;

procedure TfmEstoqueGrid.btnEntradaClick(Sender: TObject);
var F : TfmEntradaEstoque;
begin
  F := TfmEntradaEstoque.Create(Self);
  try
    F.xTipoMovimento := meEntrada;
    F.ShowModal;
  finally
    F.Free;
    IB_Query1.Refresh;
  end;
end;

procedure TfmEstoqueGrid.btnSaidaClick(Sender: TObject);
var F : TfmEntradaEstoque;
begin
  F := TfmEntradaEstoque.Create(Self);
  try
    F.xTipoMovimento := meSaida;
    F.ShowModal;
  finally
    F.Free;
    IB_Query1.Refresh;
  end;
end;

procedure TfmEstoqueGrid.FormCreate(Sender: TObject);
begin
  FormEditor := TfmEntradaEstoque;
  inherited;
end;

end.
