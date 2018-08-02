package br.com.fiap.spring.model;

public class Carro 
{
	private String modelo;
	
	private int ano;
	
	private boolean importado;
	
	private boolean blindado;
	
	private String marca;

	public String getModelo() 
	{
		return modelo;
	}

	public void setModelo(String modelo) 
	{
		this.modelo = modelo;
	}

	public int getAno() 
	{
		return ano;
	}

	public void setAno(int ano) 
	{
		this.ano = ano;
	}

	public boolean isImportado() 
	{
		return importado;
	}

	public void setImportado(boolean importado) 
	{
		this.importado = importado;
	}

	public boolean isBlindado() 
	{
		return blindado;
	}

	public void setBlindado(boolean blindado) 
	{
		this.blindado = blindado;
	}

	public String getMarca() 
	{
		return marca;
	}

	public void setMarca(String marca) 
	{
		this.marca = marca;
	}
	
	
}
