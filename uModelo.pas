unit uModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TFrmModelo = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Pesquisa1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModelo: TFrmModelo;

implementation

{$R *.dfm}

procedure TFrmModelo.Sair1Click(Sender: TObject);
begin
 Application.Terminate;
end;

end.
