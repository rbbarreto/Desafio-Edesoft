unit view.dono;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXPanels;

type
  TfrmDono = class(TForm)
    CardPanel1: TCardPanel;
    CardLista: TCard;
    CardCadastro: TCard;
    Panel1: TPanel;
    Panel2: TPanel;
    btnNovo: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    dsDono: TDataSource;
    edtCodigo: TLabeledEdit;
    edtNome: TLabeledEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FStatus: string;
    procedure SetStatus(const Value: string);
    { Private declarations }
    property Status: string read FStatus write SetStatus;
    procedure carregar;
    procedure ClearEdit;
  public
    { Public declarations }
  end;

var
  frmDono: TfrmDono;

implementation

uses
  Model.Dono, Componente.DmDados;

{$R *.dfm}

procedure TfrmDono.btnAlterarClick(Sender: TObject);
begin
  if dsDono.DataSet.IsEmpty then
   raise Exception.Create('Selecione um registro para alteração');

  Status := 'E';
  CardPanel1.ActiveCard := CardCadastro;

  edtCodigo.Text := dsDono.DataSet.FieldByName('id').AsString;
  edtNome.Text := dsDono.DataSet.FieldByName('nome').AsString;
end;

procedure TfrmDono.btnCancelarClick(Sender: TObject);
begin
  Status := '';
  CardPanel1.ActiveCard := CardLista;
  ClearEdit;
end;

procedure TfrmDono.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente exluir este registro ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  exit;

  TModelDono
         .New
         .id(dsDono.DataSet.FieldByName('id').AsInteger)
      .delete;

  carregar;
end;

procedure TfrmDono.btnNovoClick(Sender: TObject);
begin
  Status := 'I';
  CardPanel1.ActiveCard := CardCadastro;
end;

procedure TfrmDono.btnSalvarClick(Sender: TObject);
begin
  if Status = 'I' then
   begin
    TModelDono
         .New
         .Nome(edtNome.Text)
      .Salva;
   end else
   begin
     TModelDono
         .New
         .id(StrToInt(edtCodigo.Text))
         .Nome(edtNome.Text)
       .update;
   end;

 CardPanel1.ActiveCard := CardLista;
 carregar;
 ClearEdit;
end;

procedure TfrmDono.carregar;
begin
  DmDados.FDdono.Close;
  DmDados.FDdono.Open();
end;

procedure TfrmDono.ClearEdit;
begin
  edtCodigo.Clear;
  edtNome.Clear;
end;

procedure TfrmDono.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsDono.DataSet.Close;
end;

procedure TfrmDono.FormShow(Sender: TObject);
begin
  CardPanel1.ActiveCard := CardLista;
  carregar;
end;

procedure TfrmDono.SetStatus(const Value: string);
begin
   FStatus := Value;
end;

end.
