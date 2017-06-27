Dado(/^que estou no site do Walmart$/) do
	visit "https://www.walmart.com.br/"
end

Quando(/^Procurar pelo termo "([^"]*)" na busca$/) do |arg1|
	fill_in('suggestion-search', :with => 'TV')
	click_button('Procurar').click

end

Então(/^valido que a busca foi feita$/) do
	expect('Resultados de busca para "tv"')
end

Então(/^Adicionar ao meu carrinho$/) do
	find(:xpath, '//*[@id="product-list"]/section/ul/li[1]/section/a/figure/img').click
	find(:xpath, '//*[@id="buybox"]/div/div[2]/div/div/div[2]/button').click
	find(:xpath, '/html/body/div[2]/div/div[1]/div/button').click
	
end

E(/^verificar se o produto foi adicionado ao carrinho$/) do
    find(:xpath, '//*[@id="site-topbar"]/div[2]/div[1]/a').click 
    expect(page).to have_content('Smart TV LED 43” LG 43LJ5500 Full HD com Conversor Digital 2 HDMI 1 USB Wi-Fi Integrado webOS 3.5 - Energia Elétrica - Bivolt - LG')
end