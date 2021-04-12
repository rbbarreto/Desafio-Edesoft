unit view.relacionamento.Caes.donos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.Buttons;

type
  TfrmCaesDonos = class(TForm)
    CardPanel1: TCardPanel;
    CardLista: TCard;
    CardLanca: TCard;
    CardListaDono: TCard;
    CardlistaCaes: TCard;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    dsRelacionamento: TDataSource;
    GroupBox1: TGroupBox;
    edtCodigo: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    edtNome: TLabeledEdit;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    edtCodigoCaes: TLabeledEdit;
    edtNomeCaes: TLabeledEdit;
    edtRaca: TLabeledEdit;
    Panel5: TPanel;
    btnSalva: TButton;
    btnCancelar: TButton;
    Panel6: TPanel;
    btn_dono: TButton;
    Panel7: TPanel;
    btn_caes: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btn_donoClick(Sender: TObject);
    procedure btn_caesClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FStatus: string;
    procedure SetStatus(const Value: string);
    { Private declarations }
    property Status: string read FStatus write SetStatus;
    procedure carregarRelacionamento;
    procedure ClearEdit;
  public
    { Public declarations }
  end;

var
  frmCaesDonos: TfrmCaesDonos;

implementation

{$R *.dfm}

uses Componente.DmDados, Model.relacionamento.Caes.Dono;

{ TfrmCaesDonos }

procedure TfrmCaesDonos.btnCancelarClick(Sender: TObject);
begin
  Status := '';
  CardPanel1.ActiveCard := CardLista;
end;

procedure TfrmCaesDonos.btnSalvaClick(Sender: TObject);
begin
  if Status = 'I' then
   begin
      TModelrelacionamentoCaesDono
            .New
           .IdDono(StrToInt(edtCodigo.Text))
           .IdCao(StrToInt(edtCodigoCaes.Text))
         .salva;
   end;

   CardPanel1.ActiveCard := CardLista;
   carregarRelacionamento;
end;

procedure TfrmCaesDonos.btn_caesClick(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardLanca;
  ClearEdit;
end;

procedure TfrmCaesDonos.btn_donoClick(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardLanca;
  ClearEdit;
end;

procedure TfrmCaesDonos.Button1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente exluir este registro ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  exit;

  TModelrelacionamentoCaesDono
         .New
         .ID(dsRelacionamento.DataSet.FieldByName('codigo').AsInteger)
      .Exclur;

  carregarRelacionamento;
end;

procedure TfrmCaesDonos.Button2Click(Sender: TObject);
begin
  Status := 'I';
  CardPanel1.ActiveCard := CardLanca;
end;

procedure TfrmCaesDonos.Button3Click(Sender: TObject);
begin
  Status := 'E';
  CardPanel1.ActiveCard := CardLanca;
end;

procedure TfrmCaesDonos.carregarRelacionamento;
begin
  dsRelacionamento.DataSet.Close;
  dsRelacionamento.DataSet.Open;
end;

procedure TfrmCaesDonos.ClearEdit;
begin
  edtCodigo.Clear;
  edtNome.Clear;
  edtCodigoCaes.Clear;
  edtNomeCaes.Clear;
  edtRaca.Clear;
end;

procedure TfrmCaesDonos.DBGrid1DblClick(Sender: TObject);
begin
  edtCodigo.Text := DmDados.FDlistadonoID.AsString;
  edtNome.Text := DmDados.FDlistadonoNOME.AsString;
  CardPanel1.ActiveCard := CardLanca;
end;

procedure TfrmCaesDonos.DBGrid2DblClick(Sender: TObject);
begin
  edtCodigoCaes.Text := DmDados.FDListaCaesID.AsString;
  edtNomeCaes.Text := DmDados.FDListaCaesNOME.AsString;
  edtRaca.Text := DmDados.FDListaCaesRACA.AsString;
  CardPanel1.ActiveCard := CardLanca;
end;

procedure TfrmCaesDonos.FormShow(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardLista;
  carregarRelacionamento;
end;

procedure TfrmCaesDonos.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

procedure TfrmCaesDonos.SpeedButton1Click(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardListaDono;
  DmDados.FDlistadono.Open;
end;

procedure TfrmCaesDonos.SpeedButton2Click(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardlistaCaes;
  DmDados.FDListaCaes.Open;
end;

end.
