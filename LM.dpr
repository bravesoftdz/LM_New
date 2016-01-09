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
  ContasEditor in 'Modules\Financeiro\ContasEditor.pas' {fmContasEditor},
  ContasGrid in 'Modules\Financeiro\ContasGrid.pas' {fmContasGrid},
  Sis.Classes in 'Functions\Sis.Classes.pas',
  EntradaEstoque in 'Modules\Estoque\EntradaEstoque.pas' {fmEntradaEstoque},
  EstoqueGrid in 'Modules\Estoque\EstoqueGrid.pas' {fmEstoqueGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TDMDados, DMDados);
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
