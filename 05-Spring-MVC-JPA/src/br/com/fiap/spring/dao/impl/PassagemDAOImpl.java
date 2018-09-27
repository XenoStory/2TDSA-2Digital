package br.com.fiap.spring.dao.impl;

import java.util.Calendar;
import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.fiap.spring.dao.PassagemDAO;
import br.com.fiap.spring.model.Passagem;

@Repository
public class PassagemDAOImpl extends GenericDAOImpl<Passagem, Integer> 
	implements PassagemDAO
{

	@Override
	
	public List<Passagem> listarPorOrigimDestinoData(String origem, String destino, Calendar data) 
	{
		return em.createQuery("from Passagem where origem like :o and destino like :d and data = :dt order by valor", Passagem.class)
				.setParameter("o", "%" + origem + "%")
				.setParameter("d", "%" + destino + "%")
				.setParameter("dt", data)
				.getResultList();
	}

	@Override
	public void fazerCheckin(int codigo) 
	{
		Passagem p = buscar(codigo);
		p.setCheckin(true);
		atualizar(p);
	}

}
