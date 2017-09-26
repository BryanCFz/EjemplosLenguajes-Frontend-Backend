/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
http://hitmontop-ejerciciosresueltos.blogspot.com.co/2012/02/deiteljava727java-la-criba-de.html

 */
package RangoNumeroPrimo;


/**
 *
 * @author BryanCFz-user
 *
 */
public class PruebaRapida {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        //System.out.println("ES PRIMO? " + is_prime(4));
        
        Eratostenes_mod miObjetod = new Eratostenes_mod();
        miObjetod.setTamano_Arreglo(7);
        miObjetod.Principal();

        for (Integer ObtenerListaPrimo : miObjetod.ObtenerListaPrimos()) {
            System.out.println("  " + ObtenerListaPrimo);
        }

    }

}
