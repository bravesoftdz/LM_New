unit ContasEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, IB_Components, IB_Access,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, IB_Grid, IB_Controls, Vcl.StdCtrls,
  Vcl.Mask, IB_EditButton, Sis.Classes;

type
  TfmContasPagarEditor = class(TfmFormEditor)
    IB_Edit1: TIB_Edit;
    IB_Edit2: TIB_Edit;
    IB_Edit5: TIB_Edit;
    IB_Date1: TIB_Date;
    IB_LookupCombo1: TIB_LookupCombo;
    IB_LookupCombo2: TIB_LookupCombo;
    IB_Grid1: TIB_Grid;
    IB_Grid2: TIB_Grid;
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
    procedure IB_Query1BeforePost(IB_Dataset: TIB_Dataset);
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

{$R *.dfm}

function TfmContasPagarEditor.GetTipoConta: TTipoConta;
begin
  Result := FTipoConta;
end;

procedure TfmContasPagarEditor.IB_Query1BeforePost(IB_Dataset: TIB_Dataset);
begin
  if FTipoConta = tpPagar then
    IB_Query1.FieldByName('tipo').AsInteger := 1
  else
    IB_Query1.FieldByName('tipo').AsInteger := 2;

  inherited;
end;

procedure TfmContasPagarEditor.SetTipoConta(const Value: TTipoConta);
begin
  FTipoConta := Value;
end;

end.
