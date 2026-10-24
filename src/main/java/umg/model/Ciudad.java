package umg.model;

public class Ciudad {
    private int idCiudad;
    private String nombre;

    //constructor bonito
    public Ciudad(int idCiudad, String nombre) {
        this.idCiudad = idCiudad;
        this.nombre = nombre;
    }
    
    //Constructor Vacio
    public Ciudad() {
    }

    public int getIdCiudad() {
        return idCiudad;
    }

    public void setIdCiudad(int idCiudad) {
        this.idCiudad = idCiudad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "Ciudad{" + "idCiudad=" + idCiudad + ", nombre=" + nombre + '}';
    }
    
   
    
    
}
