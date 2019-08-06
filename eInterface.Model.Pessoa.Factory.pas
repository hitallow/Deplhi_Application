unit eInterface.Model.Pessoa.Factory;

interface

uses
  eInterface.Model.Interfaces, eInterface.Model.PessoaFisica,
  eInterface.Model.PessoaJuridica;

type
  TModelPessoaFactory = class(TInterfacedObject, iPessoaFactory)

  public
    constructor Create;
    destructor destroy; override;
    class function New(): iPessoaFactory;
    function PessoaFisica(): iPessoa;
    function PessoaJuridica(): iPessoa;

  end;

implementation

{ TModelPessoaFactory }

constructor TModelPessoaFactory.Create;
begin

end;

destructor TModelPessoaFactory.destroy;
begin

  inherited;
end;

class function TModelPessoaFactory.New: iPessoaFactory;
begin
  Result := Self.Create();

end;

function TModelPessoaFactory.PessoaFisica: iPessoa;
begin
  Result := TPessoaFisica.New();

end;

function TModelPessoaFactory.PessoaJuridica: iPessoa;
begin
  Result := TPessoaJuridica.New();

end;

end.
