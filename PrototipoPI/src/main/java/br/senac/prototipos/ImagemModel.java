
package br.senac.prototipos;

/**
 *
 * @author while true
 */
public class ImagemModel {
    int id;
    String nome;
    String alt;

    public ImagemModel(int id, String nome, String alt) {
        this.id = id;
        this.nome = nome;
        this.alt = alt;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getAlt() {
        return alt;
    }
}

