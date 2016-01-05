unit ProdutosEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfmProdutosEditor = class(TfmFormEditor)
    ColorBox1: TColorBox;
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
