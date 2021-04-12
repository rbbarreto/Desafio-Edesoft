unit frmPrincipal.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses Componente.DmDados, view.dono, view.caes, view.relacionamento.Caes.donos,
  view.Relatorio.Caes.donos;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmDono, frmDono);
  try
    frmDono.ShowModal;
  finally
    FreeAndNil(frmDono);
  end;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCaes, frmCaes);
  try
     frmCaes.ShowModal;
  finally
     FreeAndNil(frmCaes);
  end;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCaesDonos, frmCaesDonos);
  try
    frmCaesDonos.ShowModal;
  finally
    FreeAndNil(frmCaesDonos);
  end;
end;

procedure TfrmMain.Button4Click(Sender: TObject);
begin
   Application.CreateForm(TfrmFiltrar, frmFiltrar);
   try
     frmFiltrar.ShowModal;
   finally
     FreeAndNil(frmFiltrar);
   end;
end;

end.
