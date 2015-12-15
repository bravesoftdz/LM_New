unit CliForEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, IB_EditButton, IB_Controls,
  IB_Grid;

type
  TfmCliforEditor = class(TfmFormEditor)
    edtCodigo: TIB_Edit;
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_Edit3: TIB_Edit;
    IB_ComboBox1: TIB_ComboBox;
    IB_Edit4: TIB_Edit;
    GroupBox1: TGroupBox;
    IB_Edit5: TIB_Edit;
    IB_Edit6: TIB_Edit;
    IB_Edit7: TIB_Edit;
    IB_Edit8: TIB_Edit;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_Edit9: TIB_Edit;
    IB_Edit10: TIB_Edit;
    IB_Date1: TIB_Date;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCliforEditor: TfmCliforEditor;

implementation

{$R *.dfm}

end.
