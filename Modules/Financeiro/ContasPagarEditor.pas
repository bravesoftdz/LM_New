unit ContasPagarEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, IB_Grid, IB_Controls, Vcl.StdCtrls,
  Vcl.Mask, IB_EditButton, Sis.Classes, Vcl.Menus;

type
  TfmContasPagarEditor = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_Edit5: TIB_Edit;
    IB_Date1: TIB_Date;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_LookupCombo2: TIB_LookupCombo;
    IB_Edit3: TIB_Edit;
    IB_Edit4: TIB_Edit;
    IB_Edit6: TIB_Edit;
    IB_Date2: TIB_Date;
    IB_Date3: TIB_Date;
    IB_Memo1: TIB_Memo;
    IB_CheckBox1: TIB_CheckBox;
    IB_CheckBox2: TIB_CheckBox;
    IB_CheckBox3: TIB_CheckBox;
    qryClifor: TIB_Query;
    srcClifor: TIB_DataSource;
    qryPlanoConta: TIB_Query;
    SrcPlanoconta: TIB_DataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure IB_Query1BeforePost(IB_Dataset: TIB_Dataset);
    procedure FormShow(Sender: TObject);
    procedure IB_DataSource1DataChange(Sender: TIB_StatementLink;
      Statement: TIB_Statement; Field: TIB_Column);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    FTipoConta : TTipoConta;
    function GetTipoConta: TTipoConta;
    procedure SetTipoConta(const Value: TTipoConta);
  public
    { Public declarations }
    property TipoConta : TTipoConta read GetTipoConta write SetTipoConta;
  end;

var
  fmContasPagarEditor: TfmContasPagarEditor;

implementation

uses CliforGrid, PlanoContaGrid;

{$R *.dfm}

procedure TfmContasPagarEditor.FormShow(Sender: TObject);
begin
  inherited;
  AbrirQuery(qryClifor);
  AbrirQuery(qryPlanoConta);

  if IB_Date1.Enabled then
    IB_Date1.SetFocus;
end;

function TfmContasPagarEditor.GetTipoConta: TTipoConta;
begin
  Result := FTipoConta;
end;

procedure TfmContasPagarEditor.IB_DataSource1DataChange(Sender: TIB_StatementLink;
  Statement: TIB_Statement; Field: TIB_Column);
begin
  with IB_Query1 do begin
    if (Field = FieldByName('QUANTIDADE'))
      or (Field = FieldByName('VALOR_UNITARIO'))
    then
      FieldByName('VALOR').AsCurrency := FieldByName('QUANTIDADE').AsFloat * FieldByName('VALOR_UNITARIO').AsFloat;

  end;
  inherited;
end;

procedure TfmContasPagarEditor.IB_Query1BeforePost(IB_Dataset: TIB_Dataset);
begin
  IB_Query1.FieldByName('tipo').AsInteger := 1;
  inherited;
end;

procedure TfmContasPagarEditor.SetTipoConta(const Value: TTipoConta);
begin
  FTipoConta := Value;
end;

procedure TfmContasPagarEditor.SpeedButton1Click(Sender: TObject);
var F : TfmCliForGrid;
begin
  F := TfmCliForGrid.Create(Self);
  try
    F.IB_Query1.Locate('codigo', IB_Query1.FieldByName('clifor').AsInteger, []);
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TfmContasPagarEditor.SpeedButton2Click(Sender: TObject);
var F : TfmPlanoConGrid;
begin
  F := TfmPlanoConGrid.Create(Self);
  try
    F.IB_Query1.Locate('codigo', IB_Query1.FieldByName('PLANO_CONTA').AsInteger, []);
    F.ShowModal;
  finally
    F.Free;
  end;
end;

end.


