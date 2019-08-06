program Project4;

uses
  Vcl.Forms,
  eInterface.View.Principal in 'eInterface.View.Principal.pas' {Form4},
  eInterface.Model.Interfaces in 'eInterface.Model.Interfaces.pas',
  eInterface.Model.Pessoa in 'eInterface.Model.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
