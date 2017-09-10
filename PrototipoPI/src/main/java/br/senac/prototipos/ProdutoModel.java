package br.senac.prototipos;

/**
 *
 * @author while true
 */
public class ProdutoModel {

    private int id;
    private String nome;
    private String descricao;
    private double valor;
    private ImagemModel imagem;

    public ProdutoModel(int id, String nome, String descricao, double valor, ImagemModel imagem) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        this.valor = valor;
        this.imagem = imagem;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public double getValor() {
        return valor;
    }

    public ImagemModel getImagem() {
        return imagem;
    }
}
