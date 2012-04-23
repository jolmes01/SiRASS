package com.sirass.OLD;

/**
 *
 * @author gomezhyuuga
 */
public class Institucion extends Usuario {
    // Atributos de una institución

    private String nombre;
    private Plantel plantel;
    private String domicilio;
    private String area;
    private String responsable;
    private String cargo;
    private String tel;
    private String telExt;
    private String email;

    public Institucion() {
        this.setTipo("institucion");
        this.setRoles(new String[]{"institucion"});
        this.plantel.setId(0);
    }

    @Override
    public int registro() {
        int status = 0;
        // Conectarse a la BD
        OperacionesDB odb = new BaseDatos();
        // 1) Hacer registro de usuario
        status = super.registro();
        // 2) Hacer registro de institución
        if (status == 1) {  // Solo si se registró el usuario continuar
            // 3) Hacer el registro de institución
            int idInstitucion = 0;
            idInstitucion = odb.insertInstitucion(this);
            System.out.println(this.getTipo() + "ID " + idInstitucion);
            if (idInstitucion > 0) {  // Si se hizo el registro correcto del prestador
                System.out.println(this.getTipo() + "ID " + this.getId());
                // 4) Establecer el id una vez registrado
                this.setId(idInstitucion);
                // 5) Actualizar la tabla de Usuario con el ID
                status = odb.updateUsuario(this);
                if (status == 1) {
                    // 6) Insertar el rol para el usuario
                    status = odb.insertRol(this, "institucion");
                    // 7) Si la institución selecciona un plantel que no esté en el catálogo, registrarlo
                    if (status == 1 && this.plantel.getId() != 0) {
                        // Registrar plantel
                        Plantel plantel = new Plantel();
                        plantel.setId(this.plantel.getId());
                        plantel.setIdInstitucion(this.getId());
                        plantel.setNombre(this.plantel.getNombre());
                        status = plantel.registro();
                    }
                }
            } else {
                return 0;
            }
        }
        return status;
    }

    public String getNombre() {
        return nombre;
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

    public Plantel getPlantel() {
        return plantel;
    }

    public void setPlantel(Plantel plantel) {
        this.plantel = plantel;
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

    public void imprimirInfo() {
        System.out.println("#####\tInformación del prestador\t#####");
        System.out.println("ID:\t" + this.getId());
        System.out.println("Usuario:\t" + this.getUsuario());
        System.out.println("Password:\t" + this.getPassword());
        System.out.println("Nombre:\t" + this.getNombre());
        System.out.println("Domicilio:\t" + this.getDomicilio());
        System.out.println("Área:\t" + this.getArea());
        System.out.println("Responsable:\t" + this.getResponsable());
        System.out.println("Cargo:\t" + this.getCargo());
        System.out.println("tel:\t" + this.getTel());
        System.out.println("telExt:\t" + this.getTelExt());
        System.out.println("Email:\t" + this.getEmail());
        System.out.println("#######################################");
    }
}
