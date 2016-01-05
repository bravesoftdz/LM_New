unit PlanoContaEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, IB_Grid, Vcl.StdCtrls, IB_Controls, Vcl.Mask,
  IB_EditButton;

type
  TfmPlanoConEditor = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_ComboBox1: TIB_ComboBox;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_Edit3: TIB_Edit;
    SpeedButton1: TSpeedButton;
    Grupos: TIB_Query;
    SourceGrupos: TIB_DataSource;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPlanoConEditor: TfmPlanoConEditor;

implementation

{$R *.dfm}

uses
GruposPlanoConGrid;

procedure TfmPlanoConEditor.FormShow(Sender: TObject);
begin
  inherited;
  Grupos.Open();
end;

procedure TfmPlanoConEditor.SpeedButton1Click(Sender: TObject);
var F : TfmGrupoPlanoConGrid;
begin
  F := TfmGrupoPlanoConGrid.Create(self);
  try
    F.ShowModal;
  finally
    F.Free;
    grupos.Refresh;
  end;
end;

end.
