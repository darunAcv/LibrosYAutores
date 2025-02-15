package com.darun.controladores;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller

public class ControladorLibros {

	private static HashMap<String, String> listaLibros=new HashMap<String, String>();
	
	 public ControladorLibros() {
		  listaLibros.put("Odisea", "Homero"); 
		  listaLibros.put("Don Quijote de la Mancha", "Miguel de Cervantes");
		  listaLibros.put("El Código Da Vinci", "Dan Brown");  
		  listaLibros.put("Alicia en el país de las maravillas", "Lewis Carroll");
		  listaLibros.put("El Hobbit", "J.R.R. Tolkien"); 
		  listaLibros.put("El alquimista", "Paulo Coelho"); 
		 }
	 
	 @GetMapping("/libros")
	 public String obtenerTodosLosLibros(Model model) {
		 model.addAttribute("listaLibros", listaLibros);
		 return "libros.jsp";
	 }
	 
	 @GetMapping("/libros/{nombre}")
	 public String obtenerInformacionDeLibro(@PathVariable("nombre")String nombreLibro,
			 								Model model) {
		 if(listaLibros.containsKey(nombreLibro)) {
			 model.addAttribute("mensaje",listaLibros.get(nombreLibro)+ " - "+nombreLibro);
		 } else {
			 model.addAttribute("mensaje", "El libro no se encuentra en nuestra lista.");
		 }
		 return "detalleLibro.jsp";
	 }
	 
	 @GetMapping("/libros/formulario")
	 public String formularioLibro() {
		 return "formularioLibros.jsp";
	 }
	 
	 @PostMapping("/procesa/libro")
	 public String procesaLibro(@RequestParam String autor,
			 					@RequestParam String titulo) {
		 ControladorLibros.listaLibros.put(titulo, autor);
		 
		 return "redirect:/libros";
	 }
	 
	 
}
