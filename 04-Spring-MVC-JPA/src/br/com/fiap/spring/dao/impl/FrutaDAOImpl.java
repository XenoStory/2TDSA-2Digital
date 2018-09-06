package br.com.fiap.spring.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.fiap.spring.dao.FrutaDAO;
import br.com.fiap.spring.model.Fruta;

@Repository
public class FrutaDAOImpl extends GenericDAOImpl<Fruta, Integer> implements FrutaDAO
{

	@Override
	public List<Fruta> pesquisarPorNome(String nome) 
	{
		return em.createQuery("from Fruta where nome like :n", Fruta.class)
				.setParameter("n", "%" + nome + "%")
				.getResultList();
	}
}
