unit Dados;

interface

uses
  System.SysUtils, System.Classes, IB_Components;

type
  TDMDados = class(TDataModule)
    Conexao: TIB_Connection;
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

end.
