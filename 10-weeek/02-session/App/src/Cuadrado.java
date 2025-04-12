public class Cuadrado extends Figura {
    private Double lado;

    public Double getLado() {
        return this.lado;
    }

    public void setLado(Double lado) {
        this.lado = lado;
    }

    @Override
    public Double Area() {
        this.setArea(this.getLado()*this.getLado());
        return this.getArea();
    }

    @Override
    public Double Perimetro() {
        super.setArea(this.getLado()*this.getLado()*2);
        return super.Perimetro();
    }
}