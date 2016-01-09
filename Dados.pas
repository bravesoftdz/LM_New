unit Dados;

interface

uses
  System.SysUtils, System.Classes, IB_Components;

type
  TDMDados = class(TDataModule)
    Conexao: TIB_Connection;
    procedure ConexaoBeforeConnect(Sender: TIB_Connection);
  private
    { Private declarations }
    FUsuario : Integer;
    FEmpresa : Integer;
    function GetUsuario: Integer;
    procedure SetUsuario(const Value: Integer);
    function GetEmpresa: Integer;
    procedure SetEmpresa(const Value: Integer);
  public
    { Public declarations }
    property Usuario: Integer read FUsuario write FUsuario;
    property Empresa: Integer read FEmpresa write FEmpresa;
  end;

var
  DMDados: TDMDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMDados.ConexaoBeforeConnect(Sender: TIB_Connection);
begin
  Conexao.Database := '127.0.0.1/3055:lm';
//  Conexao.Database := '192.168.0.100/3055:lm';
  Conexao.Username := 'sysdba';
  Conexao.Password := 'masterkey';
end;

function TDMDados.GetEmpresa: Integer;
begin
  Result := FEmpresa;
end;

function TDMDados.GetUsuario: Integer;
begin
  Result := FUsuario;
end;

procedure TDMDados.SetEmpresa(const Value: Integer);
begin
  FEmpresa := Value;
end;

procedure TDMDados.SetUsuario(const Value: Integer);
begin
  FUsuario := Value;
end;

end.
