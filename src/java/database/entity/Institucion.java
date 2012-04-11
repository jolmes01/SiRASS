package database.entity;

/**
 *
 * @author gomezhyuuga
 */
public class Institucion extends Usuario {
    // Atributos de una institución
    private String domicilio;
    private String area;
    private String responsable;
    private String cargo;
    private String tel;
    private String telExt;
    private String email;

    public Institucion() {
        this.setTipo("institucion");
    }
    
    // Getter & setter
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

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
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
}
