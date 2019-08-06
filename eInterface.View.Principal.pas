unit eInterface.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  eInterface.Model.Interfaces,
  eInterface.Model.PessoaFisica, eInterface.Controller.Pessoa, Vcl.WinXCtrls,
  Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    btn_cria: TButton;
    Nome: TEdit;
    sobrenome: TEdit;
    Logs: TMemo;
    cm_tipoPessoa: TComboBox;
    procedure btn_criaClick(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure cm_tipoPessoaChange(Sender: TObject);
    procedure cm_tipoPessoaClick(Sender: TObject);

  private
    { Private declarations }
    FPessoa: iPessoa;
    procedure addInMemo(value: string);
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  eInterface.Controller.Interfaces;

{$R *.dfm}

procedure TFormPrincipal.cm_tipoPessoaChange(Sender: TObject);
begin
  case cm_tipoPessoa.ItemIndex of
    0:
      FPessoa := TControllerPessoa.new.Pessoa(tpPessoaFisica);
    1:
      FPessoa := TControllerPessoa.new.Pessoa(tpPessoaJuridica);
  end;

end;

procedure TFormPrincipal.cm_tipoPessoaClick(Sender: TObject);
begin
  btn_cria.Enabled := True;
  case cm_tipoPessoa.ItemIndex of
    0:
      FPessoa := TControllerPessoa.new.Pessoa(tpPessoaFisica);
    1:
      FPessoa := TControllerPessoa.new.Pessoa(tpPessoaJuridica);
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  // FPessoa := TControllerPessoa.new.Pessoa(tpPessoaJuridica);
  ReportMemoryLeaksOnShutdown := True;
end;

procedure TFormPrincipal.addInMemo(value: string);
begin
  Logs.Lines.Add(value);
end;

procedure TFormPrincipal.btn_criaClick(Sender: TObject);
begin

  FPessoa.Nome(Nome.Text).sobrenome(sobrenome.Text).setDisplay(addInMemo)
    .nomeCompleto();
end;

end.
