Dado("que possuo itens no meu carrinho") do
    
    @restaurantes.load
    @restaurantes.selecionarRestaurante_burgerHouse
  
    # Adiciona no carrinho um item qualquer
    itens = all('.menu-item-info-box')
    itens.sample.find('a').click

    sleep 5
end

Dado("eu já fechei o meu pedido") do
    @menu.fecharPedido
end

Quando("eu finalizo o pedido com {string}") do |pagamento|
  @finalizaPedido.preencheCampos
  formaPagamento = find('mt-radio[formcontrolname="paymentOption"] div', text: pagamento)
  formaPagamento.find('label div').click
  click_button 'Concluir Pedido'
  sleep 1
end

Então("meu pedido é concluído com a mensagem: {string}") do |mensagem|
  expect(page).to have_content mensagem
end