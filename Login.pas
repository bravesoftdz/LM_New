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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;

implementation

{$R *.dfm}

end.
