program Projeto_INI;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uModelo in 'uModelo.pas' {FrmModelo},
  uCliente in 'uCliente.pas' {FrmCliente},
  uArqINI in 'uArqINI.pas' {FrmArqINI},
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmModelo, FrmModelo);
  Application.CreateForm(TFrmCliente, FrmCliente);
  Application.CreateForm(TFrmArqINI, FrmArqINI);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
