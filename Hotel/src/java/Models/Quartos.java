/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author israel
 */
public enum Quartos {
    Basico(1, "Basico"),
    Intermediario(2, "Intermediario"),
    Luxo(3, "Luxuoso");
    
    private final int id;
    private final String nome;
    Quartos(int id, String nome) {
        this.id = id;
        this.nome = nome;
    }
    
    public String getNome() {
        return this.nome;
    }
    
    public int getId() {
        return this.id;
    }
}