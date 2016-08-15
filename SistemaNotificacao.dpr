program SistemaNotificacao;

uses
  Vcl.Forms,
  uFrmPrinciapal in 'uFrmPrinciapal.pas' {FrmPrincipal},
  UNOESC.Notificacao in 'UNOESC.Notificacao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
