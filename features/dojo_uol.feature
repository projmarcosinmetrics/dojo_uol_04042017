#language: pt
#encoding: utf-8

Funcionalidade: Acessa o site da UOL através do Google e verifica o valor do dólar na sessão de economia

Cenário: validar no site da UOL se o valor do dólar é menor ou igual o desejado
  Dado que acesso a página principal do Google
  E efetuo uma busca pelo termo UOL
  E clico no link principal da página da UOL
  E visualizo a página desejada
  Quando acesso a área de economia do site
  E visualizo o valor do dólar menor que "3.20"
  Então a operação é concluída com sucesso
