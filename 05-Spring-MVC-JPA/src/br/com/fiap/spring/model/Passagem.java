package br.com.fiap.spring.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@SequenceGenerator(name="passagem",allocationSize=1)
public class Passagem {

	@Id
	@GeneratedValue(generator="passagem",strategy=GenerationType.SEQUENCE)
	private int codigo;
	
	private String destino;
	
	private String origem;

	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Calendar data;
	
	private boolean checkin; //false no cadastro
	
	private boolean bagagem;
	
	private double valor;

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public String getOrigem() {
		return origem;
	}

	public void setOrigem(String origem) {
		this.origem = origem;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public boolean isCheckin() {
		return checkin;
	}

	public void setCheckin(boolean checkin) {
		this.checkin = checkin;
	}

	public boolean isBagagem() {
		return bagagem;
	}

	public void setBagagem(boolean bagagem) {
		this.bagagem = bagagem;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}
	
}
