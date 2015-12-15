unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    ClienteseFornecedores1: TMenuItem;
    procedure ClienteseFornecedores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

uses CliforGrid;

procedure TfmPrincipal.ClienteseFornecedores1Click(Sender: TObject);
var F : TfmCliForGrid;
begin
  F := TfmCliForGrid.Create(Self);
  try
    F.ShowModal;
  finally
    F.Free;
  end;
end;

end.
