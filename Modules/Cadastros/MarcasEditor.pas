unit MarcasEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, IB_EditButton, IB_Controls;

type
  TfmMarcasEditor = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMarcasEditor: TfmMarcasEditor;

implementation

{$R *.dfm}

end.
