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
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FormEditor : TfmFormEditor;
    NomeTabela : String;
  end;

var
  fmFormGrid: TfmFormGrid;

implementation

{$R *.dfm}

procedure TfmFormGrid.btnExcluirClick(Sender: TObject);
begin
  inherited;
  //adicionaer classe question message
  IB_Query1.Delete;
end;

procedure TfmFormGrid.btnIncluirClick(Sender: TObject);
begin
  inherited;
  FormEditor.Create(Self);
  try
    FormEditor.ShowModal;
  finally
    FormEditor.Free;
  end;
end;

end.
