/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
http://hitmontop-ejerciciosresueltos.blogspot.com.co/2012/02/deiteljava727java-la-criba-de.html
 */
package com.bcf.numeroprimo.modelo;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author BryanCFz-user
 */
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   +                          CRIBA DE ERATOSTENES                            +
   + Este programa muestra numeros primos obtenidos mediante el algoritmo de  +
   + Eratostenes.                                                             + 
   + ENTRADA: No requiere entrada                                             + 
   + SALIDA: Numeros primos                                                   + 
   +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

 /*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   *                                ALGORITMO:                                *
   * Los numeros de 2 a N se consideran todos primos en un principio          *
   *                                                                          * 
   * Desde j = 2 hasta N - 1                                                  *
   *   Desde k = j hasta N/j                                                  *
   *     El Numero k*j se considera no primo.                                 *  
   *                                                                          *
   * Imprime los numeros que al final del proceso aun son primos              *
   +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
public class Eratostenes_mod {   // Abre clase Eratostenes

    private List<Integer> listaPrimos;
    

    private int Tamano_Arreglo = 30;     //  10000000;
    //Basta cambiar este numero para obtener
    // los primos hasta ese limite

    /////////////////////////////////////////////
    // METODO PRINCIPAL
    /////////////////////////////////////////////
    public void Principal() { //ABRE PRINCIPAL 
        boolean Arreglo[];
        Arreglo = new boolean[Tamano_Arreglo + 3];
        for (int i = 1; i < Tamano_Arreglo; i++) {
            Arreglo[i] = true; //EN PRINCIPIO TODOS LOS NUMEROS SE CONSIDERAN PRIMOS
        }
        for (int j = 2; j <= Tamano_Arreglo; j++) {
            if (true == Arreglo[j]) // Para numeros grandes este if hace una 
            // diferencia de tiempo importante
            {
                for (int k = 2; k <= (Tamano_Arreglo) / j; k++) {
                    Arreglo[k * j] = false;
                }
            }
        }

        // Se llama al metodo GuardarNumerosPrimos_arreglo
        GuardarNumerosPrimos_arreglo(Arreglo, Tamano_Arreglo);
    } //CIERRA PRINCIPAL 

    //////////////////////////////////////////////
    // GUARDAR-NUMEROS-PRIMOS-ARREGLO
    //////////////////////////////////////////////
    private void GuardarNumerosPrimos_arreglo(boolean A[], int Tamano) { //ABRE IMPRIME
        listaPrimos  = new ArrayList<>(); //  INICIALIZA LA LISTA DE PRIMOS
        for (int primo = 1; primo <= Tamano; primo++) { //ABRE FOR
            // AGREGA NUMEROS PRIMOS AL ARREGLO
            if (true == A[primo]) {
                listaPrimos.add(primo);
            }
        } //CIERRA FOR
        is_prime_numeroActual(getTamano_Arreglo());
    } //CIERRA GUARDAR-NUMEROS-PRIMOS-ARREGLO  
    
    //////////////////////////////////////////////
    // ES-PRIMO
    //////////////////////////////////////////////
    private boolean is_prime(int primo) {
        for (int n = 2; n <= (int) Math.sqrt(primo); n++) {
            if (primo % n == 0) {
                return false; //no es primo
            }
        }
        return true;//es primo
    }//CIERRA ES-PRIMO
        
    //////////////////////////////////////////////
    // ES-PRIMO-NUMERO-ACTUAL
    private void is_prime_numeroActual(int primo) {
        if(is_prime(primo))
            listaPrimos.add(primo);
    } //  ES-PRIMO-NUMERO-ACTUAL

    //////////////////////////////////////////////
    // OBTENER-LISTA-PRIMOS
    //////////////////////////////////////////////
    public List<Integer> ObtenerListaPrimos() { //ABRE IMPRIME
        /*for (Integer listaPrimo : listaPrimos) 
            System.out.print(" " + listaPrimo);*/
        
        return listaPrimos;
    } //CIERRA OBTENER-LISTA-PRIMOSS      

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //  SET && GET
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public int getTamano_Arreglo() {
        return Tamano_Arreglo;
    }

    public void setTamano_Arreglo(int Tamano_Arreglo) {
        this.Tamano_Arreglo = Tamano_Arreglo;
    }

}   // Cierra clase Eratostenes
