public class Cuadrado extends Figura {
    private Double lado;

    public Cuadrado(Double lado) {
        this.lado = lado;
    }

    public Double getLado() {
        return lado;
    }

    public void setLado(Double lado) {
        this.lado = lado;
    }

    @Override
    public Double getArea() {
        return lado * lado;
    }

    @Override
    public Double getPerimetroDouble() {
        return 4 * lado;
    }
}