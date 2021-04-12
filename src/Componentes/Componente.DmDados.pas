unit Componente.DmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, FireDAC.Phys.IBBase, ppParameter,
  ppDesignLayer, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppDB, ppDBPipe, ppVar;

type
  TDmDados = class(TDataModule)
    FDConn: TFDConnection;
    FDdono: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDdonoID: TIntegerField;
    FDdonoNOME: TStringField;
    FDCaes: TFDQuery;
    FDCaesID: TIntegerField;
    FDCaesNOME: TStringField;
    FDCaesRACA: TStringField;
    FDRelacionamento: TFDQuery;
    FDRelacionamentoCLIENTE: TStringField;
    FDRelacionamentoNOME_CAO: TStringField;
    FDRelacionamentoRACA: TStringField;
    FDlistadono: TFDQuery;
    FDListaCaes: TFDQuery;
    dsListadono: TDataSource;
    dsListaCaes: TDataSource;
    FDlistadonoID: TIntegerField;
    FDlistadonoNOME: TStringField;
    FDListaCaesID: TIntegerField;
    FDListaCaesNOME: TStringField;
    FDListaCaesRACA: TStringField;
    FDRelacionamentoCODIGO: TIntegerField;
    ReportCaesDono: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    FDRel: TFDQuery;
    dsRel: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    FDRelCLIENTE: TStringField;
    FDRelNOME_CAO: TStringField;
    FDRelRACA: TStringField;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    FDRelID: TIntegerField;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBCalc1: TppDBCalc;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
