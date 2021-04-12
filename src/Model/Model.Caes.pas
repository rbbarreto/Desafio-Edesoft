unit Model.Caes;

interface

uses
  Model.Interfaces, FireDAC.Comp.Client, Data.DB;

type
  TModelCaes = class(TInterfacedObject, icaes)
  private
    FID :Integer;
    FNome: string;
    FRaca : string;
    FQuery : TFDQuery;
    function carregarDono(DataSet: TDataSet): icaes;
  public
    constructor create;
    destructor destroy; override;
    class function New: icaes;
    function id(value: Integer): icaes;
    function Nome(value: string): icaes;
    function Salva: icaes;
    function delete: icaes;
    function update: icaes;
    function Raca(value: string): iCaes;
  end;

implementation

uses
  System.SysUtils, Componente.DmDados;

{ TModelCaes }

function TModelCaes.carregarDono(DataSet: TDataSet): icaes;
begin
  Result := Self;
end;

constructor TModelCaes.create;
begin
  FQuery := TFDQuery.Create(nil);
end;

function TModelCaes.delete: icaes;
begin
  Result := Self;
  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.Connection := DmDados.FDConn;
  FQuery.SQL.Add( 'delete from caes where id = ' + QuotedStr(IntToStr(FID)) );
  FQuery.Prepared := True;

  try
    FQuery.ExecSQL;
  except on E: Exception do
      raise Exception.Create('Procure o administrado do Sistema'
              + sLineBreak
              + E.Message );
  end;
end;

destructor TModelCaes.destroy;
begin
  FreeAndnil(FQuery);
  inherited;
end;

function TModelCaes.id(value: Integer): icaes;
begin
  FID := value;
  Result := Self;
end;

class function TModelCaes.New: icaes;
begin
  result := Self.create;
end;

function TModelCaes.Nome(value: string): icaes;
begin
  FNome := value;
  Result := Self;
end;

function TModelCaes.Raca(value: string): iCaes;
begin
  Result := Self;
  FRaca := value;
end;

function TModelCaes.Salva: icaes;
begin
  Result := Self;
  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.Connection := DmDados.FDConn;
  FQuery.SQL.Add( 'insert into caes( nome, raca ) values (:nome, :raca ) ');

  FQuery.ParamByName('nome').AsString := FNome;
  FQuery.ParamByName('raca').AsString := FRaca;

  FQuery.Prepared := True;

  try
    FQuery.ExecSQL;
  except on E: Exception do
      raise Exception.Create('Procure o administrado do Sistema'
              + sLineBreak
              + E.Message );
  end;
end;

function TModelCaes.update: icaes;
begin
  Result := Self;
  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.Connection := DmDados.FDConn;
  FQuery.SQL.Add(' update caes' +
                 '    set nome = :nome, '  +
                 '        raca = :raca  ' +
                 ' where (id = :id)   ' );

  FQuery.ParamByName('nome').AsString := FNome;
  FQuery.ParamByName('id').AsInteger := FID;
  FQuery.ParamByName('raca').AsString := FRaca;

  FQuery.Prepared := True;
  try
    FQuery.ExecSQL;
  except on E: Exception do
      raise Exception.Create('Procure o administrado do Sistema'
              + sLineBreak
              + E.Message );
  end;
end;

end.
