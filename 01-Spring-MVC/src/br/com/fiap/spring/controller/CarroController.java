package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Carro;

@Controller
@RequestMapping("/carro")
public class CarroController 
{
	@GetMapping("form")
	public String carregarForm()
	{
		return "/carro/form";
	}
	
	@PostMapping(value="cadastrar")
	public ModelAndView processarForm(Carro carro)
	{	
		System.out.println(carro.isBlindado());
		ModelAndView retorno = new ModelAndView("/carro/form");
		retorno.addObject("car", carro);
		retorno.addObject("status", true);
		
		return retorno;
	}
}
