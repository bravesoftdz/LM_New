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
    procedure IB_Grid1GetCellProps(Sender: TObject; ACol, ARow: Integer;
      AState: TGridDrawState; var AColor: TColor; AFont: TFont);
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

procedure TfmEstoqueGrid.IB_Grid1GetCellProps(Sender: TObject; ACol,
  ARow: Integer; AState: TGridDrawState; var AColor: TColor; AFont: TFont);
begin
  try
    with IB_DataSource1.DataSet do
    begin
      BufferRowNum := IB_Grid1.DataRow[ARow];
      if BufferRowNum > 0 then
      begin
        If BufferFieldByName('tipo_movimento').AsString = 'Saída' then    //não quitada e não vencida
          AFont.Color := $00133AD9;

        If BufferFieldByName('tipo_movimento').AsString = 'Entrada' then  //não quitada e vencida
          AFont.Color := $0056A554;

        If BufferFieldByName('tipo_movimento').AsString = 'Locação' then  //vencendo hoje e quitada
          AFont.Color := $00B75F3E;
      end;
    end;
  except
  Exit;
  end;
end;

end.
