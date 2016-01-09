unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Dados,
  IB_Components, IB_Access, IB_Grid;

type
  TfmLogin = class(TForm)
    IB_LookupCombo1: TIB_LookupCombo;
    Usuarios: TIB_Query;
    srcUsuarios: TIB_DataSource;
    Edit1: TEdit;
    btnEntrar: TSpeedButton;
    btnFechar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;

implementation

{$R *.dfm}

procedure TfmLogin.btnEntrarClick(Sender: TObject);
begin
  if Edit1.Text = Usuarios.FieldByName('senha').AsString then begin
    DMDados.Usuario := Usuarios.FieldByName('codigo').AsInteger;
    Close
  end else
    ShowMessage('Senha Incorreta!');
end;

procedure TfmLogin.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfmLogin.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then
   btnEntrar.Click;
end;

procedure TfmLogin.FormCreate(Sender: TObject);
begin
  Usuarios.Open();
end;

end.
