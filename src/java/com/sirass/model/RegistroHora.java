package com.sirass.model;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author gomezhyuuga
 */
public class RegistroHora {

    private ControlHoras controlHoras;
    private int idRegistroHora;
    private Date fecha;
    private Time horaEntrada;
    private Time horaSalida;
    private int horasDia;

    public RegistroHora() {
    }

    public ControlHoras getControlHoras() {
        return controlHoras;
    }

    public void setControlHoras(ControlHoras controlHoras) {
        this.controlHoras = controlHoras;
    }

    public Date getFecha() {
        return fecha;
    }

    public int getIdRegistroHora() {
        return idRegistroHora;
    }

    public void setIdRegistroHora(int idRegistroHora) {
        this.idRegistroHora = idRegistroHora;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Time getHoraEntrada() {
        return horaEntrada;
    }

    public void setHoraEntrada(Time horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public Time getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(Time horaSalida) {
        this.horaSalida = horaSalida;
    }

    public int getHorasDia() {
        return horasDia;
    }

    public void setHorasDia(int horasDia) {
        this.horasDia = horasDia;
    }

    void printInfo() {
        System.out.println("idRegistroHora: " + idRegistroHora);
        System.out.println("fecha: " + fecha.toString());
        System.out.println("horaEntrada: " + horaEntrada.toString());
        System.out.println("horaSalida: " + horaSalida.toString());
        System.out.println("horasDia: " + horasDia);
    }
}
