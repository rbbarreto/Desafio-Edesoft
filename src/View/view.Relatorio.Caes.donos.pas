unit view.Relatorio.Caes.donos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmFiltrar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtBuca: TLabeledEdit;
    btnRel: TButton;
    DBGrid1: TDBGrid;
    procedure edtBucaChange(Sender: TObject);
    procedure btnRelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltrar: TfrmFiltrar;

implementation

{$R *.dfm}

uses Componente.DmDados;

procedure TfrmFiltrar.btnRelClick(Sender: TObject);
begin
  DmDados.ReportCaesDono.PrintReport;
end;

procedure TfrmFiltrar.edtBucaChange(Sender: TObject);
begin
  DmDados.FDRel.Close;
  DmDados.FDRel.SQL.Clear;
  DmDados.FDRel.SQL.Add(' SELECT donos.nome as cliente, '+
                        '       caes.nome as nome_cao,  '+
                        '       caes.raca as raca,       '+
                        '       caes_dono.id   '+
                        ' FROM  caes_dono               '+
                        '  inner join donos on (donos.id = caes_dono.id_dono) '+
                        '  inner join caes on (caes.id = caes_dono.id_cao) ' +
                        ' WHERE UPPER(caes.raca) like ' + UpperCase(QuotedStr('%' + edtBuca.Text + '%') ));
  DmDados.FDRel.Open();
//    TModelFilteredOnchange
//     .New
//       .FilteredSQL('  UPPER(NOME) like ' +
//      UpperCase(QuotedStr('%' + edtBusca.Text + '%'))
//        )
//     .FilteredOnchange(dsProduto);
//
end;

end.
