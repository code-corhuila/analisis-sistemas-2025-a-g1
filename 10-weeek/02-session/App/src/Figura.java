public class Figura implements Contrato {
    private Double area;
    private Double perimetro;
    private String mensaje;

    @Override
    public Double Area() {
        return 0.0;
    }

    @Override
    public Double Perimetro() {
        return 0.0;
    }

    public Double getArea() {
        return area;
    }

    public void setArea(Double area) {
        this.area = area;
    }

    public Double getPerimetro() {
        return perimetro;
    }

    public void setPerimetro(Double perimetro) {
        this.perimetro = perimetro;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}