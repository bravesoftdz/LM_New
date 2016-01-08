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
  public
    { Public declarations }
  end;

var
  DMDados: TDMDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMDados.ConexaoBeforeConnect(Sender: TIB_Connection);
begin
  Conexao.Database := '127.0.0.1/3055:lm';
//  Conexao.Database := '192.168.0.104/3055:lm';
  Conexao.Username := 'sysdba';
  Conexao.Password := 'masterkey';
end;

end.
