package com.senac.tads4b;

/**
 *
 * @author While True
 */
public class ProdutoModel {

    private int id;
    private String titulo;
    private String nome;
    private double valor;
    private double percDesconto;
    private String[] imagens;

    public ProdutoModel(int id, String titulo, String nome, double valor, double percDesconto, String[] imagens) {
        this.id = id;
        this.titulo = titulo;
        this.nome = nome;
        this.valor = valor;
        this.percDesconto = percDesconto;
        this.imagens = imagens;
    }

    public int getId() {
        return id;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getNome() {
        return nome;
    }

    public double getValor() {
        return valor;
    }

    public double getValorPromocional() {
        return valor * ((100 - this.percDesconto) / 100);
    }

    public double getPercDesconto() {
        return percDesconto;
    }

    public String[] getImagens() {
        return imagens;
    }
}