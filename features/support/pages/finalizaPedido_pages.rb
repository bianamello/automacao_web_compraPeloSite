class FinalizaPedido < SitePrism::Page

    element :inputNome, 'input[formcontrolname="name"]'
    element :inputEmail, 'input[formcontrolname="email"]'
    element :inputEmailConfirmacao, 'input[formcontrolname="emailConfirmation"]'
    element :inputAddress, 'input[formcontrolname="address"]'
    element :inputNumero, 'input[formcontrolname="number"]'
       

    def preencheCampos
        inputNome.set 'Fabiana'
        inputEmail.set 'testes@testes.com.br'
        inputEmailConfirmacao.set 'testes@testes.com.br'
        inputAddress.set 'Rua 3'
        inputNumero.set '4'
    end

end