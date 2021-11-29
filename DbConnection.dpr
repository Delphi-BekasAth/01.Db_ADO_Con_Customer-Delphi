program DbConnection;

uses
  Vcl.Forms,
  StartForm in 'StartForm.pas' {Form1},
  clsCustomer in 'clsCustomer.pas',
  datamodule1 in 'datamodule1.pas' {dm1: TDataModule},
  retreiveFrm in 'retreiveFrm.pas' {retreiveForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm1, dm1);
  Application.CreateForm(TretreiveForm, retreiveForm);
  Application.Run;
end.
