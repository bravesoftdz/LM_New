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
  FuncionariosEditor in 'Modules\Cadastros\FuncionariosEditor.pas' {$R *.res},
  EmpresasGrid in 'Modules\Cadastros\EmpresasGrid.pas' {$R *.res},
  PlanoContaGrid in 'Modules\Cadastros\PlanoContaGrid.pas',
  PlanoContaEditor in 'Modules\Cadastros\PlanoContaEditor.pas' {$R *.res},
  Functions in 'Functions\Functions.pas',
  Configuracoes in 'Configuracoes.pas' {fmConfiguracoes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TDMDados, DMDados);
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TfmContasPagarEditor, fmContasPagarEditor);
  Application.CreateForm(TfmContasPagarGrid, fmContasPagarGrid);
  Application.CreateForm(TfmContasReceberEditor, fmContasReceberEditor);
  Application.CreateForm(TfmContasReceberGrid, fmContasReceberGrid);
  Application.CreateForm(TfmConfiguracoes, fmConfiguracoes);
  Application.Run;
end.
