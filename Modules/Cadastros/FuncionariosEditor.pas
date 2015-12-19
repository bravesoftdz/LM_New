unit FuncionariosEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, IB_EditButton, IB_Controls,
  Vcl.ComCtrls, IB_Grid;

type
  TfmFuncionariosEditor = class(TfmFormEditor)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Usuário: TTabSheet;
    GroupBox1: TGroupBox;
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_Edit3: TIB_Edit;
    IB_Edit4: TIB_Edit;
    IB_Edit5: TIB_Edit;
    IB_Edit6: TIB_Edit;
    IB_Edit7: TIB_Edit;
    GroupBox2: TGroupBox;
    IB_Edit8: TIB_Edit;
    IB_Edit9: TIB_Edit;
    IB_Edit10: TIB_Edit;
    IB_Edit11: TIB_Edit;
    IB_Edit12: TIB_Edit;
    IB_Edit13: TIB_Edit;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_Edit14: TIB_Edit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFuncionariosEditor: TfmFuncionariosEditor;

implementation

{$R *.dfm}

end.
