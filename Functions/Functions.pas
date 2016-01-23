unit Functions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ColorGrd, IB_Grid, Vcl.Mask,
  IB_EditButton, IB_Controls;

type
  TAppFunctions = class(TObject)
  public
    class function GetFilePath: string;
  end;

  TConfig = class(TObject)
    public
      class procedure SetConfig(Entrada, Secao : String; Valor : Variant);
      class function GetConfig(Entrada, Secao : String) : Variant;
  end;

implementation

{ TAppFunctions }

class function TAppFunctions.GetFilePath: string;
begin
  Result := ExtractFilePath( Application.ExeName );
end;


{ TConfig }

class function TConfig.GetConfig(Entrada, Secao: String): Variant;
var xQry : TIB_Query;
begin
  xQry := TIB_Query.Create(nil);
  try
    try
      xQry.SQL.Text := 'select valor from configuracoes where entrada = :entrada and secao = :secao';
      xQry.ParamByName('secao').AsString := Secao;
      xQry.ParamByName('entrada').AsString := Entrada;
      xQry.Open;
      Result := xQry.FieldByName('valor').AsVariant;
    finally
      xQry.Free;
    end;
  except
    Exception.Create('Não foi possivel Gravar a configuração!');
  end;
end;

class procedure TConfig.SetConfig(Entrada, Secao: String; Valor: Variant);
var xQry : TIB_Query;
  Cod : Integer;
begin
  Cod := 0;
  xQry := TIB_Query.Create(nil);
  try
    try
      xQry.SQL.Text := 'select * from configuracoes where secao = :secao and entrada = :entrada and usuario is null';
      xQry.ParamByName('secao').AsString := Secao;
      xQry.ParamByName('entrada').AsString := Entrada;
      xQry.Open;
      Cod := xQry.FieldByName('codigo').AsInteger;
      if Cod = 0 then  //se nao existir insere se nao somente atualiza
      begin
        xQry.SQL.Text := 'insert into configuracoes(secao, entrada, valor)values(:secao, :entrada, :valor)';
        xQry.ParamByName('secao').AsString := Secao;
        xQry.ParamByName('entrada').AsString := Entrada;
        xQry.ParamByName('valor').AsVariant := Valor;
        xQry.ExecSQL;
      end else
      begin
        xQry.SQL.Text := 'update configuracoes set secao = :secao, entrada = :entrada, valor = :valor where codigo = :codigo';
        xQry.ParamByName('secao').AsString := Secao;
        xQry.ParamByName('entrada').AsString := Entrada;
        xQry.ParamByName('valor').AsVariant := Valor;
        xQry.ParamByName('codigo').AsInteger := Cod;        
        xQry.ExecSQL;      
      end;
    finally
      xQry.Free;
    end;
  except
    Exception.Create('Não foi possivel Gravar a configuração!');
  end;
end;

end.
