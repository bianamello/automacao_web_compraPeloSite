class Restaurantes < SitePrism::Page

    set_url 'http://enjoeat.herokuapp.com/restaurants'
    element :restaurante_burgerHouse, 'a[href="/restaurants/burger-house"] img[src="assets/img/restaurants/burgerhouse.png"]'


    def selecionarRestaurante_burgerHouse
        restaurante_burgerHouse.click
    end
    
end