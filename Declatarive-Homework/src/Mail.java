import org.jpl7.*;

import java.util.Map;

public class Mail {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        String tl = "consult('src/BaseConocimiento.pl')";
        Query ql = new Query(tl);
        if (!ql.hasSolution()){
            System.out.println("base de conocimiento no disponible");
        }
        else {
            System.out.println("Base encontrada");
            Variable X = new Variable(); // X es una variable de Prolog que capturará el resultado.
            Variable rutaFinal = new Variable("RutaFinal");

            Query q2 = new Query(
                    "consulta_ruta",
                    new Term[] {
                            new Atom("academia_nacional_de_seguridad_publica"),
                            new Atom("policlinica_casa_de_la_salud"),
                            rutaFinal
                    }
            );

            Map<String, Term> solution = q2.oneSolution();
            if (solution != null) {
                String valorRutaFinal = solution.get(rutaFinal.name()).toString();
                System.out.println("Ruta final: " + valorRutaFinal);
            } else {
                System.out.println("No se encontraron rutas.");
            }


        }
    }
}
