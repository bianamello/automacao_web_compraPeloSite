class Menu < SitePrism::Page

    element :item, ('.menu-item-info-box div span[class="menu-item-info-box-text"]')
    element :botao_adicionar, 'a i[class="fa fa-plus-circle"]'
    element :botao_fecharPedido, 'a[href="/order"]'

    def fecharPedido
        botao_fecharPedido.click
    end

end