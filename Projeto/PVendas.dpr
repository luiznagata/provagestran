program PVendas;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  dataModule1 in 'dataModule1.pas' {dmPrincipal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Form1.IniciaUnicaVez();
  Application.Run;
end.
