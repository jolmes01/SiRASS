package com.sirass.model;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author gomezhyuuga
 */
public class Institucion implements Serializable {

    private int idInstitucion;
    private int idCInstitucion;
    private int idPlantel;
    private String domicilio;
    private String area;
    private String responsable;
    private String cargo;
    private String tel;
    private String telExt;
    private String email;
    // Del registro
    private String modificadoPor;
    private Date ultimaModif;
    private Date creacion;

    public Institucion() {
    }

    public void getInfo() {
        System.out.println("## Información de clase: " + this.getClass().getSimpleName());
        System.out.println("idInstitucion: " + idInstitucion);
        System.out.println("idCInstitucion: " + idCInstitucion);
        System.out.println("idPlantel: " + idPlantel);
        System.out.println("domicilio: " + domicilio);
        System.out.println("area: " + area);
        System.out.println("responsable: " + responsable);
        System.out.println("cargo: " + cargo);
        System.out.println("tel: " + tel);
        System.out.println("telExt: " + telExt);
        System.out.println("email: " + email);
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public Date getCreacion() {
        return creacion;
    }

    public void setCreacion(Date creacion) {
        this.creacion = creacion;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getModificadoPor() {
        return modificadoPor;
    }

    public void setModificadoPor(String modificadoPor) {
        this.modificadoPor = modificadoPor;
    }

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public int getIdCInstitucion() {
        return idCInstitucion;
    }

    public void setIdCInstitucion(int idCInstitucion) {
        this.idCInstitucion = idCInstitucion;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getTelExt() {
        return telExt;
    }

    public void setTelExt(String telExt) {
        this.telExt = telExt;
    }

    public Date getUltimaModif() {
        return ultimaModif;
    }

    public void setUltimaModif(Date ultimaModif) {
        this.ultimaModif = ultimaModif;
    }

    public int getIdInstitucion() {
        return idInstitucion;
    }

    public void setIdInstitucion(int idInstitucion) {
        this.idInstitucion = idInstitucion;
    }

    public int getIdPlantel() {
        return idPlantel;
    }

    public void setIdPlantel(int idPlantel) {
        this.idPlantel = idPlantel;
    }
}
