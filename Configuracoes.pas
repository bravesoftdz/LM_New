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
    IB_Query1: TIB_Query;
    IB_DataSource1: TIB_DataSource;
    IB_Transaction1: TIB_Transaction;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadConfig;
    procedure GravaConfig;
  public
    { Public declarations }
  end;

var
  fmConfiguracoes: TfmConfiguracoes;

implementation

uses Functions;

{$R *.dfm}

procedure TfmConfiguracoes.FormCreate(Sender: TObject);
begin
  LoadConfig;
end;

procedure TfmConfiguracoes.GravaConfig;
begin
  TConfig.SetConfig('permite_alterar', 'contas', Edit1.Text);
end;

procedure TfmConfiguracoes.LoadConfig;
begin
  Edit1.Text := String(TConfig.GetConfig('permite_alterar', 'contas'));
end;

procedure TfmConfiguracoes.SpeedButton1Click(Sender: TObject);
begin
  GravaConfig;
end;

procedure TfmConfiguracoes.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
