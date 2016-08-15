unit UNOESC.Notificacao;

interface
uses
  Dialogs;

type
  TTipoNotificacao = (EMAIL, SMS, WHATSAPP, FACEBOOK);

  INotificacao = interface
    procedure Enviar(AMenssagem: string);
  end;

  TEmail = class(INotificacao)
    procedure Enviar(AMenssagem: string); override;
  end;

  TWhatsApp = class(INotificacao)
    procedure Enviar(AMenssagem: string); override;
  end;

  TSMS = class(INotificacao)
    procedure Enviar(AMenssagem: string); override;
  end;

  TContext = class
  strict private
    FNotificacao: INotificacao;
  public
    procedure Notificar(AMensagem: string);
    constructor Create(ANotificacao: INotificacao);
  end;

  TFabrica = class
    class function CriarNOtificacao(tipo: TTipoNotificacao): INotificacao;
  end;

  TFaceBook = class(INotificacao)
    procedure Enviar(AMenssagem: string); override;
  end;

  TPessoa = class(TInterfacedObject)
  end;


  TSecretaria = class(TPessoa, INotificacao)
  private
    FNotificacao: INotificacao;
  public
    procedure Enviar(AMensagem: string);
  end;

implementation

{ TEmail }

procedure TEmail.Enviar(AMenssagem: string);
begin
  // simular enviou de email. (30 linhas)
  ShowMessage('Email enviado' + AMenssagem);
end;

{ TSMS }

procedure TSMS.Enviar(AMenssagem: string);
begin
  // simular enviou de sms. (30 linhas)
  ShowMessage('SMS enviado' + AMenssagem);
end;

{ TContext }

constructor TContext.Create(ANotificacao: INotificacao);
begin
  self.FNotificacao := ANotificacao;
end;

procedure TContext.Notificar(AMensagem: string);
begin
  FNotificacao.Enviar(AMensagem);
end;

{ TFabrica }

class function TFabrica.CriarNOtificacao(tipo: TTipoNotificacao): INotificacao;
begin
  case tipo of
    EMAIL: exit(TEmail.Create());
    SMS: exit(TSMS.Create());
    WHATSAPP: exit(TWhatsApp.Create());
    FACEBOOK: exit(TFaceBook.Create());
    SECREATARIA: exit(TSecretaria.Create());
  end;
end;

{ TWatsApp }

procedure TWhatsApp.Enviar(AMenssagem: string);
begin
  // simular enviou de WhatsApp. (30 linhas)
  ShowMessage('WhatsApp enviado' + AMenssagem);
end;

procedure TFaceBook.Enviar(AMenssagem: string);
begin
  // simular enviou de FaceBook. (30 linhas)
  ShowMessage('FaceBook enviado' + AMenssagem);
end;

{ TSecretaria }

procedure TSecretaria.Enviar(AMensagem: string);
begin
  FNotificacao := TWhatsApp.Create();
  FNotificacao.Enviar(AMensagem);
  end;
end;

end.
