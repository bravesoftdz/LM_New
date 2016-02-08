unit Email;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdAntiFreezeBase, Vcl.IdAntiFreeze, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, Vcl.Samples.Gauges, IdAttachmentFile, IdText;

type
  Tfmemail = class(TForm)
    gbpDestinatarios: TGroupBox;
    edtPara: TEdit;
    edtCC: TEdit;
    edtCCO: TEdit;
    lblPara: TLabel;
    lblCC: TLabel;
    lblCCO: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtAssunto: TEdit;
    mmoMsg: TMemo;
    Label2: TLabel;
    ListAnexos: TListBox;
    Label3: TLabel;
    btnAnexo: TSpeedButton;
    Panel1: TPanel;
    btnEnviar: TSpeedButton;
    btnConfigurar: TSpeedButton;
    btnFechar: TSpeedButton;
    btnContatos: TSpeedButton;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    OpenDialog1: TOpenDialog;
    pg1: TGauge;
    btnRemover: TSpeedButton;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    edtHost: TEdit;
    edtPort: TEdit;
    edtNome: TEdit;
    procedure btnEnviarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListAnexosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnAnexoClick(Sender: TObject);
    procedure IdSMTP1Connected(Sender: TObject);
    procedure IdSMTP1Disconnected(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmemail: Tfmemail;

implementation

{$R *.dfm}

procedure Tfmemail.btnAnexoClick(Sender: TObject);
var I : Integer;
begin
  if OpenDialog1.Execute then
  begin
    for I := 0 to OpenDialog1.Files.Count -1 do
      if (ListAnexos.Items.IndexOf(OpenDialog1.Files[i]) = -1) then
        ListAnexos.Items.Add(OpenDialog1.Files[i])
  end;

end;

procedure Tfmemail.btnEnviarClick(Sender: TObject);
var
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
  ListDestinatarios : TStringList;
  I : Integer;
begin
  btnEnviar.Enabled:= False;
  pg1.MaxValue := 7;
  pg1.Progress := 0;

  // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;
    pg1.AddProgress(1);
    // Configuração do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS := utUseImplicitTLS;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := Variant(edtPort.Text);
    IdSMTP.Host := edtHost.Text;
    IdSMTP.Username := edtUsuario.Text;
    IdSMTP.Password := edtSenha.Text;
    pg1.AddProgress(1);
    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := edtUsuario.Text;
    IdMessage.From.Name := edtNome.Text;
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    ListDestinatarios := TStringList.Create;
    try
      ListDestinatarios.Text := StringReplace(edtPara.Text, ';', #13, [rfReplaceAll]);
      for I := 0 to ListDestinatarios.Count -1 do
        IdMessage.Recipients.Add.Text := ListDestinatarios.Strings[I];
    finally
      ListDestinatarios.Free;
    end;
    pg1.AddProgress(1);
    ListDestinatarios := TStringList.Create;
    try
      ListDestinatarios.Text := StringReplace(edtCC.Text, ';', #13, [rfReplaceAll]);
      for I := 0 to ListDestinatarios.Count -1 do
        IdMessage.BccList.Add.Text := ListDestinatarios.Strings[I];
    finally
      ListDestinatarios.Free;
    end;
    pg1.AddProgress(1);
    ListDestinatarios := TStringList.Create;
    try
      ListDestinatarios.Text := StringReplace(edtPara.Text, ';', #13, [rfReplaceAll]);
      for I := 0 to ListDestinatarios.Count -1 do
        IdMessage.CCList.Add.Text := ListDestinatarios.Strings[I];
    finally
      ListDestinatarios.Free;
    end;
    pg1.AddProgress(1);
    IdMessage.Subject := edtAssunto.Text;
    IdMessage.Encoding := meMIME;

    // Configuração do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add(mmoMsg.Text);
    IdText.ContentType := 'text/plain; charset=iso-8859-1';
    pg1.AddProgress(1);
    // Opcional - Anexo da mensagem (TIdAttachmentFile)
    if ListAnexos.Items.Count > 0 then
    begin
      for I := 0 to ListAnexos.Items.Count do
        TIdAttachmentFile.Create(IdMessage1.MessageParts, ListAnexos.Items[I]);
    end;
    pg1.AddProgress(1);
    // Conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão ou autenticação: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;
    pg1.AddProgress(1);
    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Erro ao enviar a mensagem: ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // liberação da DLL
    UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
    btnEnviar.Enabled:= true;
		pg1.Progress := 0;
  end;
end;

procedure Tfmemail.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfmemail.btnRemoverClick(Sender: TObject);
begin
	if ListAnexos.ItemIndex <> -1 then
		ListAnexos.DeleteSelected;
end;

procedure Tfmemail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IdSMTP1.Disconnect();
end;

procedure Tfmemail.FormCreate(Sender: TObject);
begin
  with IdSMTP1 do
  begin
    AuthType := satDefault;
    Host := '';
    Password := EdtSenha.Text;
    Port := 465; Username :=
    EdtUsuario.Text;
  end;
  //SSLSocket.SSLOptions.Method := sslvSSLv2; SSLSocket.SSLOptions.Mode := sslmClient;

end;

procedure Tfmemail.IdSMTP1Connected(Sender: TObject);
begin
  Caption := Caption + ' Serivdor Email status = Conectado';
end;

procedure Tfmemail.IdSMTP1Disconnected(Sender: TObject);
begin
  Caption := Caption + ' Serivdor Email status = Desconectado';
end;

procedure Tfmemail.ListAnexosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_insert then
    btnAnexo.Click
  else if key = vk_delete then
    btnRemover.Click;
end;

end.
