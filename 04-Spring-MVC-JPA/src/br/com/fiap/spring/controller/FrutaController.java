package br.com.fiap.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.FrutaDAO;
import br.com.fiap.spring.exception.RegistroNaoEncontradoException;
import br.com.fiap.spring.model.Fruta;

@Controller
@RequestMapping("/fruta")
public class FrutaController 
{
	@Autowired
	private FrutaDAO dao;
	
	@GetMapping("cadastrar")
	public String abrirForm()
	{
		return "fruta/form";
	}
	
	@PostMapping(value="cadastrar")
	@Transactional
	public ModelAndView processarForm(Fruta f, RedirectAttributes redirect)
	{
		dao.cadastrar(f);
		redirect.addFlashAttribute("msg", "Fruta cadastrada com sucesso!");
		return new ModelAndView("redirect:/fruta/cadastrar");
	}
	
	@GetMapping(value="listar")
	@Transactional
	public ModelAndView abrirList()
	{
		List<Fruta> lista = dao.listar();
		
		return new ModelAndView("fruta/lista").addObject("lista", lista);
	}
	
	@GetMapping("editar/{codigo}")
	public ModelAndView abrirEditar(@PathVariable("codigo") int id)
	{
		return new ModelAndView("/fruta/edicao").addObject("fruta", dao.buscar(id));
	}
	
	@PostMapping("editar")
	@Transactional
	public String processarEdicao(Fruta f, RedirectAttributes redirect)
	{
		dao.atualizar(f);
		redirect.addFlashAttribute("msg", "Fruta atualizada com sucesso!");
		return "redirect:/fruta/listar";
	}
	
	@PostMapping("excluir/{codigo}")
	@Transactional
	public String processarExcluir(int codigo, RedirectAttributes redirect)
	{
		String msg = "Fruta excluída com sucesso!";
		try {
			dao.excluir(codigo);
		} catch (RegistroNaoEncontradoException e) {
			msg = "ID inválido.";
		}
		
		redirect.addFlashAttribute("msg", msg);
		
		return "redirect:/fruta/listar";
	}
	
	@GetMapping("pesquisar")
	public ModelAndView pesquisar(String nome)
	{
		return new ModelAndView("fruta/lista").addObject("lista", dao.pesquisarPorNome(nome));
		
	}
}
