program DesafioEdesoft;

uses
  Vcl.Forms,
  frmPrincipal.view in 'frmPrincipal.view.pas' {frmMain},
  Model.Interfaces in 'Model\Model.Interfaces.pas',
  view.dono in 'View\view.dono.pas' {frmDono},
  Componente.DmDados in 'Componentes\Componente.DmDados.pas' {DmDados: TDataModule},
  Model.Dono in 'Model\Model.Dono.pas',
  view.caes in 'View\view.caes.pas' {frmCaes},
  Model.Caes in 'Model\Model.Caes.pas',
  view.relacionamento.Caes.donos in 'View\view.relacionamento.Caes.donos.pas' {frmCaesDonos},
  Model.relacionamento.Caes.Dono in 'Model\Model.relacionamento.Caes.Dono.pas',
  view.Relatorio.Caes.donos in 'View\view.Relatorio.Caes.donos.pas' {frmFiltrar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
