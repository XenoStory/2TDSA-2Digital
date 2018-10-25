package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.GeneroDAO;
import br.com.fiap.spring.dao.JogoDAO;
import br.com.fiap.spring.exception.RegistroNaoEncontradoException;
import br.com.fiap.spring.model.Jogo;
import br.com.fiap.spring.model.Plataforma;

@Controller
@RequestMapping("jogo")
public class JogoController 
{
	@Autowired
	private JogoDAO dao;
	
	@Autowired
	private GeneroDAO generoDAO;
	
	@GetMapping("cadastrar")
	public ModelAndView cadastrar(Jogo jogo)
	{
		return new ModelAndView("jogo/cadastro")
				.addObject("generos",generoDAO.listar())
				.addObject("plataformas", Plataforma.values());
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public String cadastrar(Jogo jogo, RedirectAttributes r)
	{
		dao.cadastrar(jogo);
		r.addFlashAttribute("msg", "Jogo cadastado com sucesso.");
		
		return "redirect:/jogo/cadastrar";
	}
	
	@GetMapping("listar")
	public ModelAndView listar()
	{
		return new ModelAndView("jogo/listar")
				.addObject("jogos", dao.listar());
	}
	
	@GetMapping("atualizar/{codigo}")
	public ModelAndView atualizar(@PathVariable("codigo") int id)
	{
		return new ModelAndView("jogo/edicao")
				.addObject("jogo", dao.buscar(id))
				.addObject("generos",generoDAO.listar());
	}
	
	@Transactional
	@PostMapping("atualizar")
	public String atualizar(Jogo jogo, RedirectAttributes r)
	{
		dao.atualizar(jogo);
		r.addFlashAttribute("msg", "Fruta atualizado com sucesso.");
		
		return "redirect:/jogo/listar";
	}
	
	@Transactional
	@PostMapping("excluir")
	public String remover(int codigo, RedirectAttributes r)
	{
		try {
			dao.excluir(codigo);
			r.addFlashAttribute("msg", "Jogo excluído com sucesso.");
		} catch (RegistroNaoEncontradoException e) {
			e.printStackTrace();
		}
		
		return "redirect:/jogo/listar";
	}
	
	@Transactional
	@PostMapping("alterarStatus/{codigo}")
	public String alterarStatus(@PathVariable("codigo") int id)
	{
		Jogo j = dao.buscar(id);
		j.setDisponivel(!j.isDisponivel());
		dao.atualizar(j);
		
		return "redirect:/jogo/listar";
	}
}
