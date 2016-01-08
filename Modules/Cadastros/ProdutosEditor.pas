unit ProdutosEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ColorGrd, IB_Grid, Vcl.Mask,
  IB_EditButton, IB_Controls;

type
  TfmProdutosEditor = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_Edit3: TIB_Edit;
    IB_Edit4: TIB_Edit;
    IB_Edit5: TIB_Edit;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_Edit6: TIB_Edit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProdutosEditor: TfmProdutosEditor;

implementation

{$R *.dfm}

end.
