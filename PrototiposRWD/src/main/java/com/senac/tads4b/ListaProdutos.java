package com.senac.tads4b;

import java.util.ArrayList;

/**
 *
 * @author While True
 */
public class ListaProdutos {

    private ArrayList<ProdutoModel> produtos;

    private ProdutoModel p1 = new ProdutoModel(1,
            "Forum",
            "Calça Jeans Forum Reta Paul Azul-Marinho",
            259.00,
            40,
            new String[]{
                "calca_jeans_forum_destaque.jpg",
                "calca_jeans_forum_frente.jpg",
                "calca_jeans_forum_costas.jpg",
                "calca_jeans_forum_detalhe.jpg"});

    public ListaProdutos() {
        this.produtos = new ArrayList<>();
        this.produtos.add(p1);
    }

    public ArrayList<ProdutoModel> getProdutos() {
        return produtos;
    }

    public ProdutoModel getById(int id) {
        ProdutoModel p = null;
        for (int i = 0; i < this.produtos.size(); i++) {
            if (this.produtos.get(i).getId() == id) {
                p = this.produtos.get(i);
                break;
            }
        }
        return p;
    }
}
