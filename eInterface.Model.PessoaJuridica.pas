unit eInterface.Model.PessoaJuridica;

interface

uses
  eInterface.Model.Interfaces;

type
  TPessoaJuridica = class(TInterfacedObject, iPessoa)
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
    Fdisplay: TEventDisplay;
  end;

implementation

{ TPessoa }

constructor TPessoaJuridica.Create();
begin
  // ainda sem nada
end;

destructor TPessoaJuridica.destroy;
begin

  inherited;
end;

// função que pode ser acessada sem instanciar uma class
class function TPessoaJuridica.New: iPessoa;
begin
  Result := Self.Create();
end;

function TPessoaJuridica.nome(Value: string): iPessoa;
begin
  Fnome := Value;
  Result := Self;
end;

function TPessoaJuridica.nomeCompleto: iPessoa;
begin
  Result := Self;
  Fdisplay(Fnome + Fsobrenome + ' LMTD ME');
end;

function TPessoaJuridica.setDisplay(Value: TEventDisplay): iPessoa;
begin
  Fdisplay := Value;
  Result := Self;
end;

function TPessoaJuridica.sobrenome(Value: string): iPessoa;
begin
  Fsobrenome := Value;
  Result := Self;
end;

end.
