package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Vaga;

@Controller
@RequestMapping("/vaga")
public class VagaController 
{
	@GetMapping("cadastrar")
	public String redirectForm()
	{
		return "vaga/form";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView processFormData(Vaga v)
	{	
		ModelAndView retorno = new ModelAndView("/vaga/resumo");
		retorno.addObject("msg", "Vaga cadastrada com sucesso.");
		retorno.addObject("v", v);
		
		return retorno;
	}
}
