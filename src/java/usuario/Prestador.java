/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package usuario;

import database.BaseDatos_0;

/**
 *
 * @author gomezhyuuga
 */
public class Prestador extends Persona {
    // Atributos del prestador

    private String nControl;
    private String dCalle;
    private String dNumInt;
    private String dNumExt;
    private String dCP;
    private String dDelegacion;
    private String dColonia;
    private String telCasa;
    private String telCel;
    private boolean difundir;

    public Prestador() {
        this.setTipo("prestador");
    }

    // Métodos del prestador
    @Override
    public int registro() {
        // Conectarse a la BD
        BaseDatos_0 baseDatos = new BaseDatos_0();
        // 1) Hacer registro de usuario
        int status = super.registro();
        // 2) Hacer registro de prestador
        if (status == 1) {  // Solo si se registró el usuario continuar
            // 3) Hacer el registro de prestador
            int idPrestador = baseDatos.doInsertPrestador(this);
            System.out.println(this.getTipo() + "ID " + this.getId());
            if (idPrestador > 0) {  // Si se hizo el registro correcto del prestador
                // 4) Establecer el id una vez registrado
                this.setId(idPrestador);
                // 5) Actualizar la tabla de rolUsuario con el rol respectivo
                status = baseDatos.insertRolUsuario("prestador", "NOW()",
                        this.getUsuario(), this.getUsuario());
            }
        }
        return status;
    }

    @Override
    public int baja() {
        int status = 0;
        // Conectarse a la BD
        BaseDatos_0 baseDatos = new BaseDatos_0();
        // Realizar DELETE
        status = baseDatos.doDeleteUsuarioAll(this);
        return status;
    }

    /**
     * Inscribirse a un programa de Servicio Social
     *
     * @return int status. Devuelve 1 si se inscribe correctamente, 0 si hay un
     * error.
     */
    public int inscripcion(int idPrograma, int tipo) {
        int status = 0;
        return status;
    }

    // Getters & setters
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

    public boolean getDifundir() {
        return difundir;
    }

    public void setDifundir(boolean difundir) {
        this.difundir = difundir;
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