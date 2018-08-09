package br.com.fiap.spring.model;

public class Vaga 
{
	private String titulo;
	
	private double salario;
	
	private boolean beneficios;
	
	private String tipo;
	
	private String descricao;
	
	public Vaga() {}

	public Vaga(String titulo, double salario, boolean beneficios, String tipo, String descricao) 
	{
		super();
		this.titulo = titulo;
		this.salario = salario;
		this.beneficios = beneficios;
		this.tipo = tipo;
		this.descricao = descricao;
	}

	public String getTitulo() 
	{
		return titulo;
	}

	public void setTitulo(String titulo) 
	{
		this.titulo = titulo;
	}

	public double getSalario() 
	{
		return salario;
	}

	public void setSalario(double salario) 
	{
		this.salario = salario;
	}

	public boolean isBeneficios() 
	{
		return beneficios;
	}

	public void setBeneficios(boolean beneficios) 
	{
		this.beneficios = beneficios;
	}

	public String getTipo() 
	{
		return tipo;
	}

	public void setTipo(String tipo) 
	{
		this.tipo = tipo;
	}

	public String getDescricao() 
	{
		return descricao;
	}

	public void setDescricao(String descricao) 
	{
		this.descricao = descricao;
	}
}
