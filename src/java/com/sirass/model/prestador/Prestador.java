package com.sirass.model.prestador;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author gomezhyuuga
 */
public class Prestador implements Serializable {

    private int inscripcion;
    private int idPrestador;
    private String nControl;
    private String nombre;
    private String aPaterno;
    private String aMaterno;
    private String email;
    private Date nacimiento;
    private char sexo;
    private String dCalle;
    private String dNumInt;
    private String dNumExt;
    private String dCP;
    private String dDelegacion;
    private String dColonia;
    private String telCasa;
    private String telCel;
    private boolean difundir;
    // Del registro
    private String modificadoPor;
    private Date ultimaModif;
    private Date creacion;

    public Prestador() {
    }

    public int getInscripcion() {
        return inscripcion;
    }

    public void setInscripcion(int inscripcion) {
        this.inscripcion = inscripcion;
    }

    public void getInfo() {
        System.out.println("## Información de clase: " + this.getClass().getSimpleName());
        System.out.println("idPrestador: " + this.idPrestador);
        System.out.println("nControl: " + this.nControl);
        System.out.println("nombre: " + this.nombre);
        System.out.println("aPaterno: " + this.aPaterno);
        System.out.println("aMaterno: " + this.aMaterno);
        System.out.println("emaiL: " + this.email);
        System.out.println("nacimiento: " + this.nacimiento.toString());
        System.out.println("sexo: " + this.sexo);
        System.out.println("dCalle: " + this.dCalle);
        System.out.println("dNumInt: " + this.dNumInt);
        System.out.println("dNumExt: " + this.dNumExt);
        System.out.println("dCP: " + this.dCP);
        System.out.println("dDelegacion: " + this.dDelegacion);
        System.out.println("dColonia: " + this.dColonia);
        System.out.println("telCasa: " + this.telCasa);
        System.out.println("telCel: " + this.telCel);
        System.out.println("difundir: " + this.difundir);
    }

    public Date getCreacion() {
        return creacion;
    }

    public void setCreacion(Date creacion) {
        this.creacion = creacion;
    }

    public String getModificadoPor() {
        return modificadoPor;
    }

    public void setModificadoPor(String modificadoPor) {
        this.modificadoPor = modificadoPor;
    }

    public Date getUltimaModif() {
        return ultimaModif;
    }

    public void setUltimaModif(Date ultimaModif) {
        this.ultimaModif = ultimaModif;
    }

    public String getaMaterno() {
        return aMaterno;
    }

    public void setaMaterno(String aMaterno) {
        this.aMaterno = aMaterno;
    }

    public String getaPaterno() {
        return aPaterno;
    }

    public void setaPaterno(String aPaterno) {
        this.aPaterno = aPaterno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getNacimiento() {
        return nacimiento;
    }

    public String getNacimientoStr() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("DD-MM-yyyy");
        return dateFormat.format(this.getNacimiento());
    }

    public void setNacimiento(Date nacimiento) {
        this.nacimiento = nacimiento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public String getdCP() {
        return dCP;
    }

    public void setdCP(String dCP) {
        this.dCP = dCP;
    }

    public String getdCalle() {
        return dCalle;
    }

    public void setdCalle(String dCalle) {
        this.dCalle = dCalle;
    }

    public String getdColonia() {
        return dColonia;
    }

    public void setdColonia(String dColonia) {
        this.dColonia = dColonia;
    }

    public String getdDelegacion() {
        return dDelegacion;
    }

    public void setdDelegacion(String dDelegacion) {
        this.dDelegacion = dDelegacion;
    }

    public String getdNumExt() {
        return dNumExt;
    }

    public void setdNumExt(String dNumExt) {
        this.dNumExt = dNumExt;
    }

    public String getdNumInt() {
        return dNumInt;
    }

    public void setdNumInt(String dNumInt) {
        this.dNumInt = dNumInt;
    }

    public boolean isDifundir() {
        return difundir;
    }

    public void setDifundir(boolean difundir) {
        this.difundir = difundir;
    }

    public int getIdPrestador() {
        return idPrestador;
    }

    public void setIdPrestador(int idPrestador) {
        this.idPrestador = idPrestador;
    }

    public String getnControl() {
        return nControl;
    }

    public void setnControl(String nControl) {
        this.nControl = nControl;
    }

    public String getTelCasa() {
        return telCasa;
    }

    public void setTelCasa(String telCasa) {
        this.telCasa = telCasa;
    }

    public String getTelCel() {
        return telCel;
    }

    public void setTelCel(String telCel) {
        this.telCel = telCel;
    }
}
