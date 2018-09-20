package br.com.fiap.spring.dao;

import java.util.Calendar;
import java.util.List;

import br.com.fiap.spring.model.Passagem;

public interface PassagemDAO extends GenericDAO<Passagem, Integer>
{
	List<Passagem>listarPorOrigimDestinoData(String origem, String destino, Calendar data);
}
