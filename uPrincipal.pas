unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.Menus, Vcl.ComCtrls, shellapi;

type
  TFrmPrincipal = class(TForm)
    PnlModelo: TPanel;
    PnlCliente: TPanel;
    PnlRunTimeForm: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    PnlBotoes: TPanel;
    MainMenu1: TMainMenu;
    Aplicao1: TMenuItem;
    Pesquisa1: TMenuItem;
    Sair1: TMenuItem;
    Image1: TImage;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    Shape4: TShape;
    PnlArqINI: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PnlModeloClick(Sender: TObject);

    procedure PnlClienteClick(Sender: TObject);
    procedure PnlRunTimeFormClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PnlArqINIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
//  FrmCriado: TForm;


implementation

{$R *.dfm}

uses uCliente, uModelo, uArqINI;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  FrmModelo.ShowModal;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  FrmCliente.ShowModal;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
var
  FrmCriado: TForm;
begin
   FrmCriado := TForm.Create(nil);
   begin
     FrmCriado.ShowModal;
   end;


end;

procedure TFrmPrincipal.PnlArqINIClick(Sender: TObject);
begin
 FrmArqINI.ShowModal;
end;

procedure TFrmPrincipal.PnlClienteClick(Sender: TObject);
begin
  FrmCliente.ShowModal;
end;

procedure TFrmPrincipal.PnlRunTimeFormClick(Sender: TObject);
var
 FrmCriado: TForm;
begin
  FrmCriado := TForm.Create(nil);
   begin
     FrmCriado.ShowModal;
   end;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text:= 'https://plussoft.com.br/';
  StatusBar1.Panels[1].Text:= 'Lucas Henrique';
  StatusBar1.Panels[2].Text:= ' Hora: '+TimeToStr(Time);
  StatusBar1.Panels[3].Text:= ' Data: '+DateToStr(Date);
end;

procedure TFrmPrincipal.PnlModeloClick(Sender: TObject);

begin
  FrmModelo.ShowModal;
end;

end.
