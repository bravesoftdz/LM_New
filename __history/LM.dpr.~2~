program LM;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {fmPrincipal},
  Dados in 'Dados.pas' {DMDados: TDataModule},
  FormPadrao in 'Forms Padrao\FormPadrao.pas' {fmFormPadrao},
  FormGrid in 'Forms Padrao\FormGrid.pas' {fmFormGrid},
  FormEditor in 'Forms Padrao\FormEditor.pas' {fmFormEditor},
  Login in 'Login.pas' {fmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TDMDados, DMDados);
  Application.CreateForm(TfmFormPadrao, fmFormPadrao);
  Application.CreateForm(TfmFormGrid, fmFormGrid);
  Application.CreateForm(TfmFormEditor, fmFormEditor);
  Application.CreateForm(TfmLogin, fmLogin);
  Application.Run;
end.
