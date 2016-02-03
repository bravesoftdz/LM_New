unit Email;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdAntiFreezeBase, Vcl.IdAntiFreeze, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, Vcl.Samples.Gauges, IdAttachmentFile;

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
    IdAntiFreeze1: TIdAntiFreeze;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    OpenDialog1: TOpenDialog;
    pg1: TGauge;
    btnRemover: TSpeedButton;
    procedure btnEnviarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
var RequerAutenticacao : Boolean;
  I : Integer;
begin
  try
    pg1.MaxValue := 6;
		pg1.Progress := 0;
    Screen.Cursor := crHourGlass;
    pg1.AddProgress(1);
    btnEnviar.Enabled := False;
    IdSMTP1.Host := 'smtp.gmail.com';
    IdSMTP1.Username := 'email@email.com';
    IdSMTP1.Password := 'senha';
    if RequerAutenticacao then
      IdSMTP1.AuthType := satDefault
    else IdSMTP1.AuthType := satNone;
    pg1.AddProgress(1);
    IdMessage1.MessageParts.Clear;
    if ListAnexos.Items.Count > 0 then
    begin
      for I := 0 to ListAnexos.Items.Count do
        TIdAttachmentFile.Create(IdMessage1.MessageParts, ListAnexos.Items[I]);
    end;
    pg1.AddProgress(1);
    IdMessage1.From.Address := 'email@email.com';
    IdMessage1.Subject := edtAssunto;
    IdMessage1.ContentType := 'text/html';
    IdMessage1.Body.Add('<html><body>');
    IdMessage1.Body.Add('<p><hr></p><br>' + mmoMsg.Text);
    IdMessage1.Body.Add('</body></html>');
    pg1.AddProgress(1);
    IdMessage1.Recipients.EMailAddresses := EdtPara.Text;
    IdMessage1.BccList.EMailAddresses := edtCC.Text;
    IdMessage1.CCList.EMailAddresses := edtCCO.Text;
    if not IdSMTP1.Connected then
      IdSMTP1.Connect();
    IdSMTP1.SendMsg(IdMessage1);
    pg1.AddProgress(1);
  finally
    IdSMTP1.Disconnect;
    Screen.Cursor := crDefault;
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
    AuthType := atLogin;
    Host := '';
    IOHandler := SSLSocket;
    Password := EdtSenha.Text;
    Port := 465; Username :=
    EdtUsuario.Text;
  end; SSLSocket.SSLOptions.Method := sslvSSLv2; SSLSocket.SSLOptions.Mode := sslmClient;

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
