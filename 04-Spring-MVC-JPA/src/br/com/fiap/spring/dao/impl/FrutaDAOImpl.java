package br.com.fiap.spring.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.spring.dao.FrutaDAO;
import br.com.fiap.spring.model.Fruta;

@Repository
public class FrutaDAOImpl extends GenericDAOImpl<Fruta, Integer> implements FrutaDAO
{

}
