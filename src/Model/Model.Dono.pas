unit Model.Dono;

interface

uses
  Model.Interfaces, FireDAC.Comp.Client, Data.DB;

type
  TModelDono = class(TInterfacedObject, idono)
  private
    FID :Integer;
    FNome: string;
    FQuery : TFDQuery;
  public
    constructor create;
    destructor destroy; override;
    class function New: idono;
    function id(value: Integer): idono;
    function Nome(value: string): idono;
    function carregarDono(DataSet: TDataSet): idono;
    function Salva: idono;
    function delete: idono;
    function update: idono;
  end;

implementation

uses
  System.SysUtils, Componente.DmDados;

{ TModelDono }

function TModelDono.carregarDono(DataSet: TDataSet): idono;
begin
  Result := Self;
end;

constructor TModelDono.create;
begin
  FQuery := TFDQuery.Create(nil);
end;

function TModelDono.delete: idono;
begin
  Result := Self;
  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.Connection := DmDados.FDConn;
  FQuery.SQL.Add( 'delete from donos where id = ' + QuotedStr(IntToStr(FID)) );
  FQuery.Prepared := True;
  try
    FQuery.ExecSQL;
  except on E: Exception do
      raise Exception.Create('Procure o administrado do Sistema' 
              + sLineBreak 
              + E.Message );  
  end;
end;

destructor TModelDono.destroy;
begin
  FreeAndnil(FQuery);
  inherited;
end;

function TModelDono.id(value: Integer): idono;
begin
  FID := value;
  Result := Self;
end;

class function TModelDono.New: idono;
begin
  result := Self.create;
end;

function TModelDono.Nome(value: string): idono;
begin
  FNome := value;
  Result := Self;
end;

function TModelDono.Salva: idono;
begin
  Result := Self;
  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.Connection := DmDados.FDConn;
  FQuery.SQL.Add( 'insert into donoS( nome) values (:nome) ');
  FQuery.ParamByName('nome').AsString := FNome;
  FQuery.Prepared := True;
  try
    FQuery.ExecSQL;
  except on E: Exception do
      raise Exception.Create('Procure o administrado do Sistema' 
              + sLineBreak 
              + E.Message );  
  end;
end;

function TModelDono.update: idono;
begin
  Result := Self;
  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.Connection := DmDados.FDConn;
  FQuery.SQL.Add(' update donos' +
                 '    set nome = :nome'  +
                 ' where (id = :id)   ' );

  FQuery.ParamByName('nome').AsString := FNome;
  FQuery.ParamByName('id').AsInteger := FID;               

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
