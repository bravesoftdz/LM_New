unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfmPrincipal = class(TForm)
    Panel1: TPanel;
    btnCadastros: TSpeedButton;
    BtnOperacional: TSpeedButton;
    BtnFinanceiro: TSpeedButton;
    BtnRelatorios: TSpeedButton;
    BtnConfig: TSpeedButton;
    PopupCadastro: TPopupMenu;
    Cadastros2: TMenuItem;
    FuncionriosUsurios1: TMenuItem;
    Planodecontas1: TMenuItem;
    PopupFinanceiro: TPopupMenu;
    PopupOperacional: TPopupMenu;
    PopupRelatorios: TPopupMenu;
    Popupconfig: TPopupMenu;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Caixa1: TMenuItem;
    Metas1: TMenuItem;
    Pedidos1: TMenuItem;
    Estoque1: TMenuItem;
    Requisies1: TMenuItem;
    Vendas1: TMenuItem;
    Locaes1: TMenuItem;
    Panel2: TPanel;
    Image1: TImage;
    Empresas1: TMenuItem;
    Cadastrodeprodutos1: TMenuItem;
    procedure btnCadastrosClick(Sender: TObject);
    procedure BtnOperacionalClick(Sender: TObject);
    procedure BtnFinanceiroClick(Sender: TObject);
    procedure BtnRelatoriosClick(Sender: TObject);
    procedure BtnConfigClick(Sender: TObject);
    procedure Cadastros2Click(Sender: TObject);
    procedure FuncionriosUsurios1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure Planodecontas1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure Cadastrodeprodutos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

uses CliforGrid, FuncionariosGrid, EmpresasGrid, PlanoContaGrid, ContasGrid,
     ProdutosGrid;

procedure TfmPrincipal.btnCadastrosClick(Sender: TObject);
begin
  PopupCadastro.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TfmPrincipal.BtnConfigClick(Sender: TObject);
begin
 Popupconfig.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TfmPrincipal.BtnFinanceiroClick(Sender: TObject);
begin
 PopupFinanceiro.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TfmPrincipal.BtnOperacionalClick(Sender: TObject);
begin
  PopupOperacional.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TfmPrincipal.BtnRelatoriosClick(Sender: TObject);
begin
 PopupRelatorios.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TfmPrincipal.Cadastrodeprodutos1Click(Sender: TObject);
var F : TfmProdutosGrid;
begin
  F := TfmProdutosGrid.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
  End;
end;

procedure TfmPrincipal.Cadastros2Click(Sender: TObject);
var F : TfmCliForGrid;
begin
  F := TfmCliForGrid.Create(Self);
  try
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TfmPrincipal.ContasaPagar1Click(Sender: TObject);
var F : TfmContasGrid;
begin
  F := TfmContasGrid.Create(Self);
  try
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TfmPrincipal.ContasaReceber1Click(Sender: TObject);
var F : TfmContasGrid;
begin
  F := TfmContasGrid.Create(Self);
  try
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TfmPrincipal.Empresas1Click(Sender: TObject);
var F : TfmEmpresasGrid;
begin
  F := TfmEmpresasGrid.Create(Self);
  Try
    F.ShowModal
  Finally
    F.Free;
  End;
end;

procedure TfmPrincipal.FuncionriosUsurios1Click(Sender: TObject);
var F : TfmFuncionariosGrid;
begin
  F := TfmFuncionariosGrid.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free
  End;
end;

procedure TfmPrincipal.Planodecontas1Click(Sender: TObject);
var F : TfmPlanoConGrid;
begin
  F := TfmPlanoConGrid.Create(Self);
  try
    F.ShowModal;
  finally
    F.Free;
  end;
end;

end.
