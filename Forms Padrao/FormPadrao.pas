unit FormPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IB_Components, IB_Access, Dados, Sis.Classes;

type
  TfmFormPadrao = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FNomeForm: String;
  public
    { Public declarations }
    Procedure AbrirQuery(Query: TIB_query);
    property NomeForm: String read FNomeForm write FNomeForm;
  end;

var
  fmFormPadrao: TfmFormPadrao;

implementation

{$R *.dfm}

{ TfmFormPadrao }

procedure TfmFormPadrao.AbrirQuery(Query: TIB_query);
var Nome : String;
begin
  if Query <> nil then begin
    Nome := Query.Name;
    if Trim(Query.SQL.Text) = '' then
      raise Exception.Create('Query '+Nome+' esta em branco');


    //Se chegou ate aqui é sinal que a query esta funcional, entao é so dar open
    Query.Open();
  end;
end;

procedure TfmFormPadrao.FormShow(Sender: TObject);
begin
  if Trim(FNomeForm) <> '' then
    Caption := FNomeForm;
end;

end.
