unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, IB_Components, IB_Access, Vcl.StdCtrls;

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
    Movimentaodeestoque1: TMenuItem;
    ipodemovimentao1: TMenuItem;
    IB_Query1: TIB_Query;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    LblRazao: TLabel;
    LblEmpresa: TLabel;
    LblEmpresa1: TLabel;
    LblEmpresa2: TLabel;
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
    procedure Movimentaodeestoque1Click(Sender: TObject);
    procedure ipodemovimentao1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Requisies1Click(Sender: TObject);
  private
    { Private declarations }

    procedure CriaForm(Form: TFormClass);
  public
    { Public declarations }
  end;
var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

uses CliforGrid, FuncionariosGrid, EmpresasGrid, PlanoContaGrid, ContasPagarGrid,
     ProdutosGrid, EstoqueGrid, TipoEntradaEstoqueGrid, ContasReceberGrid, ReservaGrid,
     Login, Dados, Functions, Configuracoes, RequisicaoGrid;

procedure TfmPrincipal.btnCadastrosClick(Sender: TObject);
begin
  PopupCadastro.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TfmPrincipal.BtnConfigClick(Sender: TObject);
var F : TfmConfiguracoes;
begin
  F := TfmConfiguracoes.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Close;
  End;

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
begin
  CriaForm(TfmProdutosGrid);
end;

procedure TfmPrincipal.Cadastros2Click(Sender: TObject);
begin
  CriaForm(TfmCliForGrid);
end;

procedure TfmPrincipal.ContasaPagar1Click(Sender: TObject);
begin
  CriaForm(TfmContasPagarGrid);
end;

procedure TfmPrincipal.ContasaReceber1Click(Sender: TObject);
begin
  CriaForm(TfmContasReceberGrid);
end;

procedure TfmPrincipal.CriaForm(Form: TFormClass);
begin
  with Form.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfmPrincipal.Empresas1Click(Sender: TObject);
begin
  CriaForm(TfmEmpresasGrid);
end;

procedure TfmPrincipal.FormCreate(Sender: TObject);
var F : TfmLogin;
begin
  F := TfmLogin.Create(Self);
  Try
    F.ShowModal;
  Finally
    F.Free;
  End;
end;

procedure TfmPrincipal.FormShow(Sender: TObject);
var
Q1 : TIB_Query;
begin
  Q1 := TIB_Query.Create(Self);
  Try
    Q1.SQL.Text := 'select usuario from usuarios where codigo = ' + IntToStr(DMDados.Usuario);
    Q1.Open();
  Finally
    Label1.Caption := 'Usuário: ' +Q1.FieldByName('usuario').AsString +
                   '   Data Login: ' + DateToStr(Date) +' - ' + TimeToStr(Time)+
                      '   Versão 1.00 2016.' ;
    Q1.Close;
    Q1.SQL.Text := 'select c.razao ' +
                   ' , c.cnpj ' +
                   ' , c.telefone ' +
                   ' , c.celular ' +
                   ' , c.email ' +
                   ' , c.endereco ' +
                   ' , cd.estado ' +
                   ' , c.cidade ' +
                   ' , cd.cidade as nome_cidade ' +
               ' from clifor c ' +
               ' left join cidades cd on cd.codigo = c.cidade ' +
               ' where c.codigo = 0'; //+ IntToStr(fmConfiguracoes.EMPRESA_PADRAO);
    Q1.Open();
    LblRazao.Caption := Q1.FieldByName('razao').AsString;
    LblEmpresa.Caption := Q1.FieldByName('cnpj').AsString + ', ' + Q1.FieldByName('Telefone').AsString;
    LblEmpresa1.Caption := Q1.FieldByName('nome_cidade').AsString + ' - ' + Q1.FieldByName('estado').AsString;
    LblEmpresa2.Caption := Q1.FieldByName('email').AsString;
    Q1.Free;
  End;
end;

procedure TfmPrincipal.FuncionriosUsurios1Click(Sender: TObject);
begin
  CriaForm(TfmFuncionariosGrid);
end;

procedure TfmPrincipal.ipodemovimentao1Click(Sender: TObject);
begin
  CriaForm(TfmTipoEstradaEstoqueGrid);
end;

procedure TfmPrincipal.Movimentaodeestoque1Click(Sender: TObject);
begin
  CriaForm(TfmEstoqueGrid);
end;

procedure TfmPrincipal.Pedidos1Click(Sender: TObject);
begin
  CriaForm(TfmReservaGrid);
end;

procedure TfmPrincipal.Planodecontas1Click(Sender: TObject);
begin
  CriaForm(TfmPlanoConGrid);
end;

procedure TfmPrincipal.Requisies1Click(Sender: TObject);
begin
  CriaForm(TfmRequisicaoGrid);
end;

end.
