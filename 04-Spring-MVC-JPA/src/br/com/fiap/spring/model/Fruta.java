package br.com.fiap.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="T_FRUTA")
@SequenceGenerator(name="fruta",  sequenceName="SQ_T_FRUTA", allocationSize=1)
public class Fruta 
{
	@Id
	@Column(name="cd_fruta")
	@GeneratedValue(generator="fruta", strategy=GenerationType.SEQUENCE)
	private int codigo;
	
	@Column(name="nm_fruta")
	private String nome;
	
	@Column(name="fl_organico")
	private boolean organico;
	
	@Column(name="nr_quantidaee")
	private int quantidade;
	
	@Column(name="vl_fruta")
	private double valor;

	public int getCodigo() 
	{
		return codigo;
	}

	public void setCodigo(int codigo) 
	{
		this.codigo = codigo;
	}

	public String getNome() 
	{
		return nome;
	}

	public void setNome(String nome) 
	{
		this.nome = nome;
	}

	public boolean isOrganico() 
	{
		return organico;
	}

	public void setOrganico(boolean organico) 
	{
		this.organico = organico;
	}

	public int getQuantidade() 
	{
		return quantidade;
	}

	public void setQuantidade(int quantidade) 
	{
		this.quantidade = quantidade;
	}

	public double getValor() 
	{
		return valor;
	}

	public void setValor(double valor) 
	{
		this.valor = valor;
	}
	
	
}
