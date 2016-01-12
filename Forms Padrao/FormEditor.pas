unit FormEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormPadrao, IB_Components, IB_Access,
  Vcl.ExtCtrls, Vcl.Buttons, Sis.Classes, Vcl.StdCtrls, Vcl.Mask, IB_EditButton,
  IB_Controls;

type
  TfmFormEditor = class(TfmFormPadrao)
    pnlControles: TPanel;
    IB_Query1: TIB_Query;
    IB_DataSource1: TIB_DataSource;
    btnConcluir: TSpeedButton;
    btnFechar: TSpeedButton;
    IB_Transaction1: TIB_Transaction;
    pnlBotao: TPanel;
    procedure btnConcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCodigo: Variant;
  public
    { Public declarations }
    property Codigo: Variant read FCodigo write FCodigo;
  end;

  TFormularioEditor = class of TfmFormEditor;

implementation

{$R *.dfm}

procedure TfmFormEditor.btnConcluirClick(Sender: TObject);
begin
  if IB_Query1.State = dssInsert then
    if Trim(IB_Query1.InsertSQL.Text) = '' then
      raise Exception.Create('Não foi declarado SQL para insert!');

  if IB_Query1.State = dssEdit then
    if Trim(IB_Query1.EditSQL.Text) = '' then
      raise Exception.Create('Não foi declarado SQL para edição!');

  IB_Query1.Post;
  IB_Transaction1.Commit;
  Close;
end;

procedure TfmFormEditor.btnFecharClick(Sender: TObject);
begin
  if IB_Query1.State in [dssEdit, dssInsert] then
    IB_Query1.Cancel;
  Close;
end;

procedure TfmFormEditor.FormShow(Sender: TObject);
var J, K : Integer;
begin
  inherited;
  //Função para alinhar a panel
  J := (pnlControles.Width - pnlBotao.Width);
  J :=  Trunc(J / 2);
  pnlBotao.Left := J;
  for K := 0 to ComponentCount -1 do
    if Components[K].ClassType = TIB_Edit then
      if (UpperCase((Components[K] as TIB_Edit).DataField) = 'CODIGO')
        and (UpperCase((Components[K] as TIB_Edit).DataSource.Name) = 'IB_DATASOURCE1')
      then
        (Components[K] as TIB_Edit).ReadOnly := True;
end;

end.
