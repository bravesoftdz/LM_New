unit FormEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormPadrao, IB_Components, IB_Access,
  Vcl.ExtCtrls;

type
  TfmFormEditor = class(TfmFormPadrao)
    pnlControls: TPanel;
    IB_Query1: TIB_Query;
    IB_DataSource1: TIB_DataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFormEditor: TfmFormEditor;

implementation

{$R *.dfm}

end.
