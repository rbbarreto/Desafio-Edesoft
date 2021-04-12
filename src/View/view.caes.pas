unit view.caes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TfrmCaes = class(TForm)
    CardPanel1: TCardPanel;
    CardLista: TCard;
    Panel1: TPanel;
    Panel2: TPanel;
    btnNovo: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    DBGrid1: TDBGrid;
    CardCadastro: TCard;
    Panel3: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    dsCaes: TDataSource;
    edtNome: TLabeledEdit;
    edtRaca: TLabeledEdit;
    edtCodigo: TLabeledEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fstatus: string;
    procedure Setstatus(const Value: string);
    { Private declarations }
    property status: string read Fstatus write Setstatus;
    procedure Carregar;
    procedure ClearEdit;
  public
    { Public declarations }
  end;

var
  frmCaes: TfrmCaes;

implementation

{$R *.dfm}

uses Model.Caes, Componente.DmDados;

procedure TfrmCaes.btnAlterarClick(Sender: TObject);
begin
  if dsCaes.DataSet.IsEmpty then
   raise Exception.Create('Selecione um registro para alteração');

  Status := 'E';
  CardPanel1.ActiveCard := CardCadastro;

  edtCodigo.Text := dsCaes.DataSet.FieldByName('id').AsString;
  edtNome.Text := dsCaes.DataSet.FieldByName('nome').AsString;
  edtRaca.Text := dsCaes.DataSet.FieldByName('raca').AsString;
end;

procedure TfrmCaes.btnCancelarClick(Sender: TObject);
begin
  status := '';
  CardPanel1.ActiveCard := CardLista;

end;

procedure TfrmCaes.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente exluir este registro ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  exit;

  TModelCaes
         .New
         .id(dsCaes.DataSet.FieldByName('id').AsInteger)
      .delete;

  carregar;
end;

procedure TfrmCaes.btnNovoClick(Sender: TObject);
begin
  Status := 'I';
  CardPanel1.ActiveCard := CardCadastro;
end;

procedure TfrmCaes.btnSalvarClick(Sender: TObject);
begin
  if Status = 'I' then
   begin
    TModelCaes
         .New
         .Nome(edtNome.Text)
         .Raca(edtRaca.Text)
      .Salva;
   end else
   begin
     TModelCaes
         .New
         .id(StrToInt(edtCodigo.Text))
         .Nome(edtNome.Text)
         .Raca(edtRaca.Text)
       .update;
   end;

 CardPanel1.ActiveCard := CardLista;
 carregar;
 ClearEdit;
end;

procedure TfrmCaes.Carregar;
begin
  dsCaes.DataSet.Close;
  dsCaes.DataSet.Open;
end;

procedure TfrmCaes.ClearEdit;
begin
  edtNome.Clear;
  edtRaca.Clear;
  edtCodigo.Clear;
end;

procedure TfrmCaes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsCaes.DataSet.Close;
end;

procedure TfrmCaes.FormShow(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardLista;
  carregar;
end;

procedure TfrmCaes.Setstatus(const Value: string);
begin
  Fstatus := Value;
end;

end.
