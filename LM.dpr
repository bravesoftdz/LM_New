program LM;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {fmPrincipal},
  Dados in 'Dados.pas' {DMDados: TDataModule},
  FormPadrao in 'Forms Padrao\FormPadrao.pas' {fmFormPadrao},
  FormGrid in 'Forms Padrao\FormGrid.pas' {fmFormGrid},
  FormEditor in 'Forms Padrao\FormEditor.pas' {fmFormEditor},
  Login in 'Login.pas' {fmLogin},
  CliForGrid in 'Modules\Cadastros\CliForGrid.pas' {fmCliForGrid},
  CliForEditor in 'Modules\Cadastros\CliForEditor.pas' {fmCliforEditor},
  ChamaForm in 'Functions\ChamaForm.pas',
  Vcl.Themes,
  Vcl.Styles,
  Sis.Classes in 'Functions\Sis.Classes.pas',
  EntradaEstoque in 'Modules\Estoque\EntradaEstoque.pas' {fmEntradaEstoque},
  EstoqueGrid in 'Modules\Estoque\EstoqueGrid.pas' {fmEstoqueGrid},
  ReservaGrid in 'Modules\Estoque\ReservaGrid.pas' {fmReservaGrid},
  ReservaEditor in 'Modules\Estoque\ReservaEditor.pas' {fmReservaEditor},
  ContasPagarEditor in 'Modules\Financeiro\ContasPagarEditor.pas' {fmContasPagarEditor},
  ContasPagarGrid in 'Modules\Financeiro\ContasPagarGrid.pas' {fmContasPagarGrid},
  ContasReceberEditor in 'Modules\Financeiro\ContasReceberEditor.pas' {fmContasReceberEditor},
  ContasReceberGrid in 'Modules\Financeiro\ContasReceberGrid.pas' {fmContasReceberGrid},
  FuncionariosGrid in 'Modules\Cadastros\FuncionariosGrid.pas' {$R *.res},
  FuncionariosEditor in 'Modules\Cadastros\FuncionariosEditor.pas',
  EmpresasGrid in 'Modules\Cadastros\EmpresasGrid.pas' {$R *.res},
  PlanoContaEditor in 'Modules\Cadastros\PlanoContaEditor.pas' {$R *.res},
  Functions in 'Functions\Functions.pas',
  Configuracoes in 'Configuracoes.pas' {fmConfiguracoes},
  Email in 'Modules\Utilitarios\Email.pas' {fmemail},
  RequisicaoGrid in 'Modules\Estoque\RequisicaoGrid.pas' {fmRequisicaoGrid},
  RequisicaoEditor in 'Modules\Estoque\RequisicaoEditor.pas',
  PlanoContaGrid in 'Modules\Cadastros\PlanoContaGrid.pas' {fmPlanoConGrid},
  QuitacaoConta in 'Modules\Financeiro\QuitacaoConta.pas' {Quitacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TDMDados, DMDados);
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(Tfmemail, fmemail);
  Application.CreateForm(TfmRequisicaoGrid, fmRequisicaoGrid);
  Application.CreateForm(TfmPlanoConGrid, fmPlanoConGrid);
  Application.CreateForm(TQuitacao, Quitacao);
  Application.Run;
end.
