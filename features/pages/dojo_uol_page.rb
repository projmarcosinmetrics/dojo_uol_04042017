require 'pry'

class PesquisarSantanderPage
	include Rack::Test::Methods
  include Capybara

  def navegar_ate_home_google
    visit 'http://www.google.com.br/'
  end

  def buscar_pagina_uol
    fill_in "lst-ib", with: "uol"
  end

  def clicar_link_pagina_principal_uol
    click_link "UOL", match: :first
  end

	def pagina_desejada_carregou?
		has_content? "UOL - O melhor conteúdo"
	end

	def acessar_area_economia
		find(:xpath, '//*[@id="menuHorizontal"]/div/div/ul/li[5]/a').click
	end

	def validar_valor_dolar(valor)
		find(:xpath, '//*[@id="cambio"]/ul/li[1]/p[1]/a').click
		resultado= find(:xpath, '//*[@id="conteudo-principal"]/div[1]/div/div[2]/div[1]/table/tbody/tr/td[2]').text
		fail "valor do dólar é maior que R$ 3,20" if resultado.to_f > 3.20
	end
end
