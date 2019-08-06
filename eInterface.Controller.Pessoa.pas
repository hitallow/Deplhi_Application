unit eInterface.Controller.Pessoa;

interface

uses
  eInterface.Controller.Interfaces, eInterface.Model.Interfaces,
  eInterface.Model.Pessoa.Factory;

type

  TControllerPessoa = class(TInterfacedObject, iControllerPessoa)
  private
  public
    constructor create;
    destructor destroy; override;
    class function new: iControllerPessoa;
    function Pessoa(value: TTypePessoa): iPessoa;
  end;

implementation

{ TControllerPessoa }

constructor TControllerPessoa.create;
begin

end;

destructor TControllerPessoa.destroy;
begin

  inherited;
end;

class function TControllerPessoa.new: iControllerPessoa;
begin
  Result := self.create();
end;

function TControllerPessoa.Pessoa(value: TTypePessoa): iPessoa;
begin
  case value of
    tpPessoaFisica:
      Result := TModelPessoaFactory.new.PessoaFisica;
    tpPessoaJuridica:
      Result := TModelPessoaFactory.new.PessoaJuridica;
  end;

end;

end.
