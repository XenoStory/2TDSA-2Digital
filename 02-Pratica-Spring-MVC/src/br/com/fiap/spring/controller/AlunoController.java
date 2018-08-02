package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Aluno;

@Controller
@RequestMapping("/aluno")
public class AlunoController 
{
	@GetMapping("form")
	public String redirectForm()
	{
		return "/aluno/form";
	}
	
	@PostMapping("register")
	public ModelAndView processFormData(Aluno aluno)
	{
		ModelAndView retorno = new ModelAndView("/aluno/form");
		retorno.addObject("msg", "Aluno " + aluno.getNome() + " cadastrado com sucesso!");
		
		return retorno;
	}
}
