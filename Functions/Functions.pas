unit Functions;

interface

uses
  System.SysUtils, Vcl.Forms;

type
  TAppFunctions = class(TObject)
  public
    class function GetFilePath: string;

  end;

implementation

{ TAppFunctions }

class function TAppFunctions.GetFilePath: string;
begin result:= ExtractFilePath( Application.ExeName ); end;


end.
