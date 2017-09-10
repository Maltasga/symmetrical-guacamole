package br.senac.prototipos;

import java.util.ArrayList;

/**
 *
 * @author while true
 */
public class ProdutoDAO {

    private ArrayList<ProdutoModel> produtos;

    public ProdutoDAO() {
        produtos = new ArrayList();
        produtos.add(new ProdutoModel(1, "Reserva", "Camiseta Reserva Pica Pau Warhol Preta", 89.99, new ImagemModel(0, "p1-camiseta-reserva.jpg", "Camiseta Reserva Pica Pau Warhol Preta")));
        produtos.add(new ProdutoModel(2, "Calvin Klein Jeans", "Camiseta Calvin Klein Jeans Go For Branca", 83.89, new ImagemModel(1, "p2-camiseta-calvinklein.jpg", "Camiseta Calvin Klein Jeans Go For Branca")));
        produtos.add(new ProdutoModel(3, "FiveBlu", "Camiseta Lemon Grove Authentic Cinza", 39.90, new ImagemModel(2, "p3-camiseta-lemon.jpg", "Camiseta Lemon Grove Authentic Cinza")));
        produtos.add(new ProdutoModel(4, "Colcci", "Camiseta Colcci Collective Preta", 79.99, new ImagemModel(3, "p4-camiseta-colcci.jpg", "Camiseta Colcci Collective Preta")));
        produtos.add(new ProdutoModel(5, "Aramis", "Camiseta Aramis Élémentaire Preta", 79.99, new ImagemModel(4, "p5-camiseta-aramis.jpg", "Camiseta Aramis Élémentaire Preta")));
        produtos.add(new ProdutoModel(6, "Blujack", "Camiseta Blujack Estampa Mergulhador Branco", 75.00, new ImagemModel(5, "p6-camiseta-blujack.jpg", "Camiseta Blujack Estampa Mergulhador Branco")));
        produtos.add(new ProdutoModel(7, "Rip Curl", "Camiseta Rip Curl Palms Vermelha", 54.99, new ImagemModel(6, "p7-camiseta-ripcurl.jpg", "Camiseta Rip Curl Palms Vermelha")));
        produtos.add(new ProdutoModel(8, "Aleatory", "Camiseta Aleatory Bordado Azul", 59.99, new ImagemModel(7, "p8-camiseta-aleatory.jpg", "Camiseta Aleatory Bordado Azul")));
        produtos.add(new ProdutoModel(9, "Quiksilver", "Camiseta Quiksilver Slim Fit Plit Photo Azul", 54.99, new ImagemModel(8, "p9-camiseta-quiksilver.jpg", "Camiseta Quiksilver Slim Fit Plit Photo Azul")));
        produtos.add(new ProdutoModel(10, "Hang Loose", "Camiseta Hang Loose Flower Cinza", 59.99, new ImagemModel(9, "p10-camiseta-hangloose.jpg", "Camiseta Hang Loose Flower Cinza")));
    }

    public ArrayList<ProdutoModel> getProdutos() {
        return produtos;
    }

    public ProdutoModel getById(int id) {
        ProdutoModel p = null;
        for (ProdutoModel item : produtos) {
            if (item.getId() == id) {
                p = item;
                break;
            }
        }
        return p;
    }
}
