unit uFrmPrinciapal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UNOESC.Notificacao;

type
  TFrmPrincipal = class(TForm)
    edtMensagem: TEdit;
    btlnenviar: TButton;
    Label1: TLabel;
    boxFormaEnvio: TComboBox;
    procedure btlnenviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btlnenviarClick(Sender: TObject);
var
  notificacao: INotificacao;
begin
  notificacao := TFabrica.CriarNOtificacao(TTipoNotificacao(boxFormaEnvio.ItemIndex));

  notificacao.enviar(edtMensagem.Text);
end;

end.
