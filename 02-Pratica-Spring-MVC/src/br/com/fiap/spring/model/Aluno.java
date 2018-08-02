package br.com.fiap.spring.model;

public class Aluno 
{
	private String nome;
	
	private int idade;
	
	private String status;
	
	private boolean bolsistas;

	public String getNome() 
	{
		return nome;
	}

	public void setNome(String nome) 
	{
		this.nome = nome;
	}

	public int getIdade() 
	{
		return idade;
	}

	public void setIdade(int idade) 
	{
		this.idade = idade;
	}

	public String getStatus() 
	{
		return status;
	}

	public void setStatus(String status) 
	{
		this.status = status;
	}

	public boolean isBolsistas() 
	{
		return bolsistas;
	}

	public void setBolsistas(boolean bolsistas) 
	{
		this.bolsistas = bolsistas;
	}
}
