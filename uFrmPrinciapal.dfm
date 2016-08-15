object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Notifica'#231#227'o'
  ClientHeight = 243
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Mensagem'
  end
  object edtMensagem: TEdit
    Left = 8
    Top = 27
    Width = 385
    Height = 21
    TabOrder = 0
    Text = 'Sua fatura vence em 16/08/2016'
  end
  object btlnenviar: TButton
    Left = 8
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = btlnenviarClick
  end
  object boxFormaEnvio: TComboBox
    Left = 8
    Top = 54
    Width = 145
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'EMAIL'
      'SMS'
      'WhatsApp'
      'FaceBook'
      'Secretaria')
  end
end
