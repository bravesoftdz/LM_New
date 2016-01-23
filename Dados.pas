unit Dados;

interface

uses
  System.SysUtils, System.Classes, IB_Components, IniFiles;

type
  TDMDados = class(TDataModule)
    Conexao: TIB_Connection;
    procedure ConexaoBeforeConnect(Sender: TIB_Connection);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FUsuario : Integer;
    FEmpresa : Integer;
    function GetUsuario: Integer;
    procedure SetUsuario(const Value: Integer);
    function GetEmpresa: Integer;
    function LeIni(secao, entrada: string): string;
    procedure SetEmpresa(const Value: Integer);
    procedure GravaIni(aTexto: string);
    function GetConfigPath: string;
    property Ini: string read GetConfigPath;
  public
    { Public declarations }
    property Usuario: Integer read GetUsuario write SetUsuario;
    property Empresa: Integer read FEmpresa write FEmpresa;
  end;

var
  DMDados: TDMDados;
  Banco, Caminho, Porta : String;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  Functions;

procedure TDMDados.DataModuleCreate(Sender: TObject);
Begin
  Banco:=LeIni('base', 'caminho');
  Caminho:=LeIni('base', 'ip_servidor');
  Porta:=LeIni('base', 'porta');
End;

function TDMDados.LeIni(secao, entrada: string): string;
  var conf: TIniFile;
begin
  conf:=TIniFile.create( Ini );
  result:=conf.ReadString(secao, entrada, '');
  conf.free;
end;

function TDMDados.GetConfigPath: string;
begin
  Result := TAppFunctions.GetFilePath + 'config.ini';
end;

procedure TDMDados.GravaIni(aTexto: string);
begin

end;

procedure TDMDados.ConexaoBeforeConnect(Sender: TIB_Connection);
begin
  Conexao.Database := Caminho+'/'+Porta+':'+Banco;
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
