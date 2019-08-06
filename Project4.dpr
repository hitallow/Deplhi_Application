program Project4;

uses
  Vcl.Forms,
  eInterface.Controller.Interfaces in 'eInterface.Controller.Interfaces.pas',
  eInterface.Controller.Pessoa in 'eInterface.Controller.Pessoa.pas',
  eInterface.Model.Interfaces in 'eInterface.Model.Interfaces.pas',
  eInterface.Model.Pessoa.Factory in 'eInterface.Model.Pessoa.Factory.pas',
  eInterface.Model.PessoaFisica in 'eInterface.Model.PessoaFisica.pas',
  eInterface.Model.PessoaJuridica in 'eInterface.Model.PessoaJuridica.pas',
  eInterface.View.Principal in 'eInterface.View.Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
