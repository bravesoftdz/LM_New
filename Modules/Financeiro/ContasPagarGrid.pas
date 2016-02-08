unit ContasPagarGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormGrid, IB_Components, IB_Access,
  Vcl.Grids, IB_Grid, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfmContasPagarGrid = class(TfmFormGrid)
    BtnQuitar: TSpeedButton;
    BtnEstornar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnQuitarClick(Sender: TObject);
    procedure BtnEstornarClick(Sender: TObject);
    procedure IB_Grid1GetCellProps(Sender: TObject; ACol, ARow: Integer;
      AState: TGridDrawState; var AColor: TColor; AFont: TFont);
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

procedure TfmContasPagarGrid.BtnEstornarClick(Sender: TObject);
var Q : Tib_Query;
begin
  if ((IB_Query1.FieldByName('codigo').AsString <> '') and (IB_Query1.FieldByName('data_pagrec').AsString <> '')) then begin
    Q := TIB_Query.Create(Self);
    Q.SQL.Text := 'execute procedure estorna_conta(' + IB_Query1.FieldByName('codigo').AsString + ')';
    Q.ExecSQL;
    Q.Free;
    IB_Query1.Refresh;
    ShowMessage('Conta estornada com sucesso!');
  end else
    ShowMessage('A conta não está quitada!');
end;

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

procedure TfmContasPagarGrid.IB_Grid1GetCellProps(Sender: TObject; ACol,
  ARow: Integer; AState: TGridDrawState; var AColor: TColor; AFont: TFont);
begin
  try
    with IB_DataSource1.DataSet do
    begin
      BufferRowNum := IB_Grid1.DataRow[ARow];
      if BufferRowNum > 0 then
      begin
        If (BufferFieldByName('data_vencimento').AsDate > Date) and (BufferFieldByName('data_pagrec').AsString = '') then    //não quitada e não vencida
          AFont.Color := $0056A554;

        If (BufferFieldByName('data_vencimento').AsDate <= Date) and (BufferFieldByName('data_pagrec').AsString = '') then  //não quitada e vencida
          AFont.Color := $00133AD9;

        If BufferFieldByName('data_pagrec').AsString <> ''  then  //vencendo hoje e quitada
          AFont.Color := $00B75F3E;
      end;
    end;
  except
  Exit;
  end;
end;
end.
