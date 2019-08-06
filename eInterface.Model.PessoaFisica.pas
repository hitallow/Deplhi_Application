unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.Interfaces;

type
  TPessoaFisica = class(TInterfacedObject, iPessoa)
  public
    constructor Create;
    destructor destroy; override;
    class function New(): iPessoa;
    function nome(Value: string): iPessoa;
    function sobrenome(Value: string): iPessoa;
    function nomeCompleto(): iPessoa;
    function setDisplay(Value: TEventDisplay): iPessoa;
  private
    Fnome: string;
    Fsobrenome: string;
    FDisplay: TEventDisplay;
  end;

implementation

{ TPessoa }

constructor TPessoaFisica.Create();
begin

  // ainda sem nada
end;

destructor TPessoaFisica.destroy;
begin

  inherited;
end;

// função que pode ser acessada sem instanciar uma class
class function TPessoaFisica.New: iPessoa;
begin
  Result := Self.Create();
end;

function TPessoaFisica.nome(Value: string): iPessoa;
begin
  Fnome := Value;
  Result := Self;
end;

function TPessoaFisica.nomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(Fnome + Fsobrenome);
end;

function TPessoaFisica.setDisplay(Value: TEventDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

function TPessoaFisica.sobrenome(Value: string): iPessoa;
begin
  Fsobrenome := Value;
  Result := Self;
end;

end.
