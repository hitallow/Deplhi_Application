unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;

type
  TTypePessoa = (tpPessoaFisica, tpPessoaJuridica);

  iControllerPessoa = interface
    ['{897AC832-1C13-4039-B5BC-D66A71678D79}']
    function Pessoa(value: TTypePessoa): iPessoa;
  end;

implementation

end.
