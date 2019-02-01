#language:pt

Funcionalidade: Finalizar pedido
    
    Para que meu pedido seja encaminhado para a fila de preparação
    Sendo um cliente que já adicionou um ou mais produtos no carrinho
    Posso finalizar o meu pedido com cartão de débito, refeição ou dinheiro

Esquema do Cenário: Pagar com dinheiro

    Dado que possuo itens no meu carrinho
    E eu já fechei o meu pedido
    Quando eu finalizo o pedido com "<pagamento>"
    Então meu pedido é concluído com a mensagem: "Seu pedido foi recebido pelo restaurante."

    Exemplos:
    | pagamento        |
    | Dinheiro         |
    | Cartão de Débito |
    | Cartão Refeição  | 


