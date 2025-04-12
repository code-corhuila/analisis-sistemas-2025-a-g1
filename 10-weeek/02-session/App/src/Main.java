//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Contrato contrato = new Contrato();
        Figura figura = new Figura();
        Double area=0.0;
        Double perimetro=0.0;

        Cuadrado cuadrado = new Cuadrado();
        cuadrado.setLado(2.4);
        area = cuadrado.Area();
        perimetro = cuadrado.Perimetro();
        System.out.println(area);
        System.out.println(perimetro);
    }
}