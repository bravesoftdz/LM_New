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

implementation

{ TAppFunctions }

class function TAppFunctions.GetFilePath: string;
begin result:= ExtractFilePath( Application.ExeName ); end;


end.
