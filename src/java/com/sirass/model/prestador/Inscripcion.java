package com.sirass.model.prestador;

import com.sirass.model.CInstitucion;
import com.sirass.model.Plantel;
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author gomezhyuuga
 */
public class Inscripcion implements Serializable {

    private int idInscripcion;
    private Prestador prestador;
    private EstadoInscripcion estado;
    private TipoInscripcion tipo;
    private String nombre;
    private String aPaterno;
    private char sexo;
    private int edad;
    private String dCalle;
    private String dNumInt;
    private String dNumExt;
    private String dColonia;
    private String dDelegacion;
    private String telCasa;
    private String telCel;
    private String email;
    // Propios de la inscripción
    private CInstitucion institucion;
    private Plantel plantel;
    private String carrera;
    private String matricula;
    private int anioIngreso;
    private short semestre;
    private double avanceCursos;
    private double promedio;
    private short nCursosBasicos;
    private short nCursosSuperior;
    private short creditos;
    private String programaInst;
    private String cveProgramaInst;
    private int idPrograma;
    private String programa;
    private String cvePrograma;
    private Date fechaInicio;
    private Date fechaFin;
    private boolean difundir;
    private String responsable;
    private String cargoResponsable;
    private String observaciones;
    // Del registro
    private String modificadoPor;
    private Date ultimaModif;
    private Date creacion;

    public Inscripcion() {
    }

    public String getaPaterno() {
        return aPaterno;
    }

    public void setaPaterno(String aPaterno) {
        this.aPaterno = aPaterno;
    }

    public int getAnioIngreso() {
        return anioIngreso;
    }

    public void setAnioIngreso(int anioIngreso) {
        this.anioIngreso = anioIngreso;
    }

    public double getAvanceCursos() {
        return avanceCursos;
    }

    public void setAvanceCursos(double avanceCursos) {
        this.avanceCursos = avanceCursos;
    }

    public String getCargoResponsable() {
        return cargoResponsable;
    }

    public void setCargoResponsable(String cargoResponsable) {
        this.cargoResponsable = cargoResponsable;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public Date getCreacion() {
        return creacion;
    }

    public void setCreacion(Date creacion) {
        this.creacion = creacion;
    }

    public short getCreditos() {
        return creditos;
    }

    public void setCreditos(short creditos) {
        this.creditos = creditos;
    }

    public String getCvePrograma() {
        return cvePrograma;
    }

    public void setCvePrograma(String cvePrograma) {
        this.cvePrograma = cvePrograma;
    }

    public String getCveProgramaInst() {
        return cveProgramaInst;
    }

    public void setCveProgramaInst(String cveProgramaInst) {
        this.cveProgramaInst = cveProgramaInst;
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

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public EstadoInscripcion getEstado() {
        return estado;
    }

    public void setEstado(EstadoInscripcion estado) {
        this.estado = estado;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public int getIdInscripcion() {
        return idInscripcion;
    }

    public void setIdInscripcion(int idInscripcion) {
        this.idInscripcion = idInscripcion;
    }

    public int getIdPrograma() {
        return idPrograma;
    }

    public void setIdPrograma(int idPrograma) {
        this.idPrograma = idPrograma;
    }

    public CInstitucion getInstitucion() {
        return institucion;
    }

    public void setInstitucion(CInstitucion institucion) {
        this.institucion = institucion;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getModificadoPor() {
        return modificadoPor;
    }

    public void setModificadoPor(String modificadoPor) {
        this.modificadoPor = modificadoPor;
    }

    public short getnCursosBasicos() {
        return nCursosBasicos;
    }

    public void setnCursosBasicos(short nCursosBasicos) {
        this.nCursosBasicos = nCursosBasicos;
    }

    public short getnCursosSuperior() {
        return nCursosSuperior;
    }

    public void setnCursosSuperior(short nCursosSuperior) {
        this.nCursosSuperior = nCursosSuperior;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public Plantel getPlantel() {
        return plantel;
    }

    public void setPlantel(Plantel plantel) {
        this.plantel = plantel;
    }

    public Prestador getPrestador() {
        return prestador;
    }

    public void setPrestador(Prestador prestador) {
        this.prestador = prestador;
    }

    public String getPrograma() {
        return programa;
    }

    public void setPrograma(String programa) {
        this.programa = programa;
    }

    public String getProgramaInst() {
        return programaInst;
    }

    public void setProgramaInst(String programaInst) {
        this.programaInst = programaInst;
    }

    public double getPromedio() {
        return promedio;
    }

    public void setPromedio(double promedio) {
        this.promedio = promedio;
    }

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public short getSemestre() {
        return semestre;
    }

    public void setSemestre(short semestre) {
        this.semestre = semestre;
    }

    public char getSexo() {
        return sexo;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
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

    public TipoInscripcion getTipo() {
        return tipo;
    }

    public void setTipo(TipoInscripcion tipo) {
        this.tipo = tipo;
    }

    public Date getUltimaModif() {
        return ultimaModif;
    }

    public void setUltimaModif(Date ultimaModif) {
        this.ultimaModif = ultimaModif;
    }
}
