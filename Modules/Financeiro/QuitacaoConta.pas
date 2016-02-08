unit QuitacaoConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, IB_EditButton,
  IB_Controls, Vcl.ComCtrls, Vcl.Buttons, Sis.Classes, IB_Components, IB_Access;

type
  TQuitacao = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    edtJuros: TEdit;
    Label2: TLabel;
    edtMulta: TEdit;
    Label3: TLabel;
    edtDesconto: TEdit;
    Label4: TLabel;
    edtTotal: TEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Qry: TIB_Query;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtJurosChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDescontoChange(Sender: TObject);
    procedure edtMultaChange(Sender: TObject);
  private
    { Private declarations }
    function AtualizaValor: Real;
  public
    { Public declarations }
    CodConta :Integer;
    TipoConta : TTipoConta;
    xValor : Real;
  end;

var
  Quitacao: TQuitacao;

implementation

{$R *.dfm}

function TQuitacao.AtualizaValor: Real;
var Juros, Multa, Desconto, Total : Real;
begin
  if Trim(edtJuros.Text) = '' then edtJuros.Text := '0';
  if Trim(edtMulta.Text) = '' then edtMulta.Text := '0';
  if Trim(edtDesconto.Text) = '' then edtDesconto.Text := '0';

  try
    if StrToFloat(edtJuros.Text) > 0 then
      Juros := StrToFloat(edtJuros.Text)
    else Juros := 0;
    if StrToFloat(edtMulta.Text) > 0 then
      Multa := StrToFloat(edtMulta.Text)
    else Multa := 0;
    if StrToFloat(edtDesconto.Text) > 0 then
      Desconto := StrToFloat(edtDesconto.Text)
    else Desconto := 0;
  except
    raise Exception.Create('Só é permitido números!');
  end;
  Total := xValor + Juros + Multa - Desconto;
  edtTotal.Text := FormatFloat('#######,##', Total);
  Result := Total;
end;

procedure TQuitacao.edtDescontoChange(Sender: TObject);
begin
  AtualizaValor;
end;

procedure TQuitacao.edtJurosChange(Sender: TObject);
begin
  AtualizaValor;
end;

procedure TQuitacao.edtMultaChange(Sender: TObject);
begin
  AtualizaValor;
end;

procedure TQuitacao.FormShow(Sender: TObject);
begin
  edtTotal.Text := FormatFloat('#######,##', xValor);
end;

procedure TQuitacao.SpeedButton1Click(Sender: TObject);
var Valor : Real;
begin
  Valor := AtualizaValor;
  if not CodConta > 0 then
    raise Exception.Create('Algo errado ocorreu!');
  Qry.SQL.Text := 'update contas c set c.data_pagrec =:data_pagrec, '+
      ' c.valor_pagrec =:valor_pagrec, '+
      ' c.juros =:juros, '+
      ' c.multa =:multa, '+
      ' c.desconto =:desconto '+
      ' where codigo =:Conta';
  Qry.ParamByName('data_pagrec').AsDate := DateTimePicker1.Date;
  Qry.ParamByName('valor_pagrec').AsFloat := Valor;
  Qry.ParamByName('juros').AsFloat := StrToFloat(edtJuros.Text);
  Qry.ParamByName('multa').AsFloat := StrToFloat(edtMulta.Text);
  Qry.ParamByName('conta').AsInteger := CodConta;
  try
    Qry.ExecSQL;
  finally
    ShowMessage('Conta Quitada com sucesso!');
  end;
  Close;
end;

procedure TQuitacao.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
