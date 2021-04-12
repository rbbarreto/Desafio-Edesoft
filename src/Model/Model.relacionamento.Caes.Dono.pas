unit Model.relacionamento.Caes.Dono;

interface

uses
  Model.Interfaces, FireDAC.Comp.Client;


type
  TModelrelacionamentoCaesDono = class(TInterfacedObject, irelacionamentoCaesDono)
  private
    FIDCaes: Integer;
    FIdDono : Integer;
    FID: Integer;
    FQuery : TFDQuery;
  public
    constructor create;
    destructor destroy; override;
    class function New: irelacionamentoCaesDono;

    function ID(value : Integer) : irelacionamentoCaesDono;
    function Exclur: irelacionamentoCaesDono;
    function IdCao(value: Integer): irelacionamentoCaesDono;
    function IdDono(value: Integer): irelacionamentoCaesDono;
    function salva: irelacionamentoCaesDono;
  end;

implementation

uses
  System.SysUtils, Componente.DmDados;

{ TModelrelacionamentoCaesDono }

constructor TModelrelacionamentoCaesDono.create;
begin
  FQuery := TFDQuery.Create(nil);
end;

destructor TModelrelacionamentoCaesDono.destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TModelrelacionamentoCaesDono.Exclur: irelacionamentoCaesDono;
begin
  Result := Self;

  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.Connection := DmDados.FDConn;
  FQuery.SQL.Add( 'delete from caes_dono where id = ' + QuotedStr(IntToStr(FID)) );
  FQuery.Prepared := True;

  try
    FQuery.ExecSQL;
  except on E: Exception do
      raise Exception.Create('Procure o administrado do Sistema'
              + sLineBreak
              + E.Message );
  end;
end;

function TModelrelacionamentoCaesDono.ID(
  value: Integer): irelacionamentoCaesDono;
begin
  Result := Self;
  FID := value;
end;

function TModelrelacionamentoCaesDono.IdCao(
  value: Integer): irelacionamentoCaesDono;
begin
  Result := Self;
  FIDCaes := value;
end;

function TModelrelacionamentoCaesDono.IdDono(
  value: Integer): irelacionamentoCaesDono;
begin
  Result := Self;
  FIdDono := value;
end;

class function TModelrelacionamentoCaesDono.New: irelacionamentoCaesDono;
begin
  result := Self.create;
end;

function TModelrelacionamentoCaesDono.salva: irelacionamentoCaesDono;
begin
  Result := Self;

  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.Connection := DmDados.FDConn;
  FQuery.SQL.Add( 'insert into caes_dono( id_dono, id_cao ) values (:id_dono, :id_cao) ');

  FQuery.ParamByName('id_dono').AsInteger := FIdDono;
  FQuery.ParamByName('id_cao').AsInteger := FIDCaes;

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
