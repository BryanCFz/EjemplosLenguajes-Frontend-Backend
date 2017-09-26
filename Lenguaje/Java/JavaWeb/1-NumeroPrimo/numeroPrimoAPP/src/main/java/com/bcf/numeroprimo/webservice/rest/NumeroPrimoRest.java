/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
https://youtu.be/Z7fUDeiCPBo?t=1098
 */
package com.bcf.numeroprimo.webservice.rest;

import com.bcf.numeroprimo.modelo.Eratostenes_mod;
import java.util.List;
import java.util.logging.Logger;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author BryanCFz-user
 * Se establecen los metodos de crear,consultar, modificar, eliminar
 */


@Path("/restPrim")
public class NumeroPrimoRest {
    
    Logger logger = Logger.getLogger(getClass().getName());
    
    public NumeroPrimoRest() {
    }
    
    /**
     *  @Consumes = Lo que recibe el metodo como parametros
     *  @Produces   = Lo que va a regresar el metodo. Osea devuelve un objeto de un TIPO-OBJETO y a este TIPO-OBJETO --> Lo convierte en un JASON
     * 
     * 
     * @param numero
     * @return 
     */
    @GET
    @Produces({MediaType.APPLICATION_JSON}) 
    @Path("/numerosPrimosAll/{numPrimo}")
    public List<Integer> numerosPrimosAll(@PathParam("numPrimo") Integer numero) {
        
        logger.info("NUMERO = " + numero);
        
        Eratostenes_mod eratostenes = new Eratostenes_mod();
        eratostenes.setTamano_Arreglo(numero); // TODO : Reemplazar por variable "numero"
        eratostenes.Principal();
                
        //    http://localhost:8080/numeroPrimo/api/restPrim/numerosPrimosAll/27        
        return  eratostenes.ObtenerListaPrimos();               
    }
    
    
    @GET
    @Produces({MediaType.APPLICATION_JSON}) 
    @Path("/findAll")
    //@Path("{numPrimo}")
    public List<Integer> findAll() {
        //  https://stackoverflow.com/questions/14414643/logging-and-or-debugging-on-remote-glassfish
        logger.info("HOLA BRYAN CORTES");
        
        Eratostenes_mod eratostenes = new Eratostenes_mod();
        eratostenes.setTamano_Arreglo(131); // TODO : Reemplazar por variable "numero"
        eratostenes.Principal();
                
        //    http://localhost:8080/numeroPrimo/api/restPrim/findAll
        return  eratostenes.ObtenerListaPrimos();
    }
    
    //TODO: pendiente mirar esta configuracion automatica
    //  https://www.initworks.com/wiki/display/public/Deploying+to+Glassfish+from+Maven
    
}
