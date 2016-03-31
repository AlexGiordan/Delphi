Dicas de processo para SQL

Dica 1: Como obter um IDINTEGRACAO novo padrão Uninfo.
  Passo 1: Abra o IBExpert
  Passo 2: Abra um novo SQL Editor.
  Passo 3: Monte o seguinte Select:
    Select Unf_Apenasnumeroletras(Uuid_To_Char(Gen_Uuid())) From Rdb$Database (Execute)
    
  obs: Se tudo estiver correto devera retornar um ID no seguinte formato por exemplo 3A10EBD7EDF24B85BC9F773B87EE29E1
