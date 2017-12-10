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
    Basico(1),
    Intermediario(2),
    Luxo(3);
    private final int id;
    Quartos(int id) {
        this.id = id;
    }
    public int getId() {
        return this.id;
    }
}