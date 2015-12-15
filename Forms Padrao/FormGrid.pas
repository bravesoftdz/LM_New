unit FormGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormPadrao, Vcl.Grids, IB_Grid,
  Vcl.ExtCtrls, IB_Components, IB_Access, Vcl.Buttons, FormEditor;

type
  TfmFormGrid = class(TfmFormPadrao)
    pnlControles: TPanel;
    IB_Grid1: TIB_Grid;
    IB_Query1: TIB_Query;
    IB_DataSource1: TIB_DataSource;
    btnIncluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnPesquisar: TSpeedButton;
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function CreateEditor(ACodigo: Variant): TFormularioEditor;
  public
    { Public declarations }
    FormEditor : TFormularioEditor;
    NomeTabela : String;
  end;

var
  fmFormGrid: TfmFormGrid;

implementation

{$R *.dfm}

function TfmFormGrid.CreateEditor(ACodigo: Variant): TFormularioEditor;
begin
 // Result := FormEditor.Create(self, ACodigo);
end;

procedure TfmFormGrid.btnExcluirClick(Sender: TObject);
begin
  inherited;
  //adicionaer classe question message
  IB_Query1.Delete;
end;

end.
