package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Contato;

@Controller
@RequestMapping("/contato")
public class ContatoController 
{
	@GetMapping("enviar")
	public String abrirForm()
	{
		return "/contato/index";
	}
	
	// value = action do form, method = M�todo de requisi��o
	//@RequestMapping(value="cadastrar", method=RequestMethod.POST) (forma antiga de fazer)
	@PostMapping(value="cadastrar") // Nova forma de realizar configura��o de requisi��es
	public ModelAndView processarForm(Contato contato)
	{
		System.out.println(contato.getEmail() + " | " + contato.getNome() + " | " + contato.getTelefone());
		// Mandar informa��es para a View
		ModelAndView retorno = new ModelAndView("contato/index");
		retorno.addObject("successMsg", contato.getNome() + ", seu contato foi enviado com sucesso!");
		
		return retorno;
	}
}
