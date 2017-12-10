/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author israel
 */


@Entity
public class Reserva implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    public Reserva(Calendar checkin, Calendar checkout, int tipo, int user) {
        this.checkin = checkin;
        this.checkout = checkout;
        this.tipo = tipo;
        this.user = user;
    
    }

    public Calendar getCheckin() {
        return checkin;
    }

    public void setCheckin(Calendar checkin) {
        this.checkin = checkin;
    }

    public Calendar getCheckout() {
        return checkout;
    }

    public void setCheckout(Calendar checkout) {
        this.checkout = checkout;
    }

    public int getCliente() {
        return user;
    }

    public void setCliente(int cliente) {
        this.user = cliente;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
    @Basic
    @Temporal(TemporalType.DATE)
    private Calendar checkin;
    @Basic
    @Temporal(TemporalType.DATE)
    private Calendar checkout;
    
    private int user;
    private int tipo;
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Reserva)) {
            return false;
        }
        Reserva other = (Reserva) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Models.Reserva[ id=" + id + " ]";
    }
    
}
