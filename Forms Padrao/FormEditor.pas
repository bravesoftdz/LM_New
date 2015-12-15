unit FormEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormPadrao, IB_Components, IB_Access,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfmFormEditor = class(TfmFormPadrao)
    pnlControls: TPanel;
    IB_Query1: TIB_Query;
    IB_DataSource1: TIB_DataSource;
    btnConcluir: TSpeedButton;
    btnFechar: TSpeedButton;
    IB_Transaction1: TIB_Transaction;
    procedure btnConcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFormEditor: TfmFormEditor;

implementation

{$R *.dfm}

procedure TfmFormEditor.btnConcluirClick(Sender: TObject);
begin
  inherited;
  IB_Query1.Post;
end;

procedure TfmFormEditor.btnFecharClick(Sender: TObject);
begin
  inherited;
  IB_Query1.Cancel;
  Close;
end;

end.
