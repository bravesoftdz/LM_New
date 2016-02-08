unit QuitacaoConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, IB_EditButton,
  IB_Controls, Vcl.ComCtrls, Vcl.Buttons;

type
  TQuitacao = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Quitacao: TQuitacao;

implementation

{$R *.dfm}

procedure TQuitacao.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := now;
end;

end.
