Dado(/^que acesso a página principal do Google$/) do
  @page= PesquisarSantanderPage.new
  @page.navegar_ate_home_google
end

Dado(/^efetuo uma busca pelo termo UOL$/) do
  @page.buscar_pagina_uol
end

Dado(/^clico no link principal da página da UOL$/) do
  @page.clicar_link_pagina_principal_uol
end

Dado(/^visualizo a página desejada$/) do
  @page.pagina_desejada_carregou?
end

Quando(/^acesso a área de economia do site$/) do
  @page.acessar_area_economia
end

Quando(/^visualizo o valor do dólar menor que "([^"]*)"$/) do |valor|
  @page.validar_valor_dolar valor
end

Então(/^a operação é concluída com sucesso$/) do
  sleep 3
end
