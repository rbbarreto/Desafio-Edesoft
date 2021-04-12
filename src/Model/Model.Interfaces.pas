unit Model.Interfaces;

interface

uses
  Data.DB;

type
  idono = interface
    ['{E95AAB54-3C16-4806-ADC3-EF7EAADB04DE}']
    function id(value: Integer): idono;
    function Nome(value: string): idono;
    function carregarDono(DataSet: TDataSet): idono;
    function Salva: idono;
    function update: idono;
    function delete: idono;
  end;

  iCaes = interface
    ['{3AA657B6-E278-43F0-9FF2-477A9661F1CC}']
    function id(value: Integer): iCaes;
    function Nome(value: string): iCaes;
    function Raca(value: string): iCaes;
    function Salva: iCaes;
    function update: iCaes;
    function delete: iCaes;
  end;

  irelacionamentoCaesDono = interface
    ['{2C079902-6B79-4241-B9EC-0805D1BDD4EE}']
    function ID(value : Integer) : irelacionamentoCaesDono;
    function IdCao(value: Integer): irelacionamentoCaesDono;
    function IdDono(value: Integer): irelacionamentoCaesDono;
    function salva: irelacionamentoCaesDono;
    function Exclur: irelacionamentoCaesDono;
  end;

implementation

end.
