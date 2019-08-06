unit eInterface.Model.Interfaces;

interface

type
  TEventDisplay = procedure(value: string) of object;

  iPessoa = interface
    ['{DF0D5FA5-37FC-4156-9847-CFAB784B670F}']
    function nome(value: string): iPessoa;
    function sobrenome(value: string): iPessoa;
    function nomeCompleto(): iPessoa;
    function setDisplay(value: TEventDisplay): iPessoa;
  end;

type
  iPessoaFactory = interface
    ['{724998CF-0ECF-4ADD-B7EA-5FFB91D99075}']
    function PessoaFisica(): iPessoa;
    function PessoaJuridica(): iPessoa;

  end;

implementation

end.
