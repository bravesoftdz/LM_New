unit Configuracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IB_Components, IB_Access, IB_Grid,
  Vcl.StdCtrls, Vcl.Mask, IB_EditButton, IB_Controls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfmConfiguracoes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    IB_Empresa_Padrao: TIB_Edit;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_Query1: TIB_Query;
    IB_DataSource1: TIB_DataSource;
    IB_Transaction1: TIB_Transaction;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Clientes: TIB_Query;
    SourceClientes: TIB_DataSource;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    EMPRESA_PADRAO : Integer;
  end;

var
  fmConfiguracoes: TfmConfiguracoes;

implementation

{$R *.dfm}

procedure TfmConfiguracoes.FormCreate(Sender: TObject);
begin
  IB_Query1.ParamByName('codigo').AsInteger := 1;
  IB_Query1.Open();
  IB_Query1.Edit;

  Clientes.Open();
  EMPRESA_PADRAO := IB_Query1.FieldByName('EMPRESA_PADRAO').AsInteger;
end;

procedure TfmConfiguracoes.SpeedButton1Click(Sender: TObject);
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

procedure TfmConfiguracoes.SpeedButton2Click(Sender: TObject);
begin
  if IB_Query1.State in [dssEdit, dssInsert] then
    IB_Query1.Cancel;
  Close;
end;

end.
