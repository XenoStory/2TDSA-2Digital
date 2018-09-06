package br.com.fiap.spring.dao;

import java.util.List;

import br.com.fiap.spring.model.Fruta;

public interface FrutaDAO extends GenericDAO<Fruta, Integer>
{
	List<Fruta> pesquisarPorNome(String nome);
}
