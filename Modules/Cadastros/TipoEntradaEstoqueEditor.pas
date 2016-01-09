unit TipoEntradaEstoqueEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, IB_Controls, Vcl.Mask, IB_EditButton;

type
  TfmTipoEntradaEstoqueEditor = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_ComboBox1: TIB_ComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTipoEntradaEstoqueEditor: TfmTipoEntradaEstoqueEditor;

implementation

{$R *.dfm}

end.
