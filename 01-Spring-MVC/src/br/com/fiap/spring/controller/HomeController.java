package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController 
{
	@RequestMapping("/home") // Mapeia a url -> http://localhost:8080/01-Spring-MVC/home
	public String abrirHome()
	{
		return "/home/index"; // Pasta e página a ser redirecionado para o usuário
	}
}
