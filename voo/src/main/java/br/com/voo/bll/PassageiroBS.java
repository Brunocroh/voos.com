package br.com.voo.bll;

import java.util.Date;
import java.util.List;

import br.com.voo.dal.PassageiroDAO;
import br.com.voo.model.Passageiro;
import br.com.voo.model.Pessoa;
import br.com.voo.util.Data;
import br.com.voo.util.ValidarPessoa;

public class PassageiroBS {

	private PassageiroDAO dao;
	private final int idadeMaxima = 12;
	
	public PassageiroBS(PassageiroDAO dao){
	  this.dao = dao;
	}
	public boolean salvar(Passageiro _passageiro) throws Exception{
		try {
			
			validarPessoa(_passageiro.getPessoa());
			validarPassageiro(_passageiro);
			
			if (_passageiro.getId() == 0)
				return dao.inserir(_passageiro);
			else
				return dao.alterar(_passageiro);
			
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		}
		
	}
	private void validarPassageiro(Passageiro passageiro) throws Exception {
		
		if(idade(passageiro.getPessoa().getDataNascimento())<=idadeMaxima &&
				passageiro.getResponsavel() == null){
			throw new Exception("� nescess�rio informar o respons�vel!");
		}
		
	}
	private int idade(Date dataNascimento) {
      
       Data data = new Data(dataNascimento);
       
       return data.calcularIdade();
       
	}
	private void validarPessoa(Pessoa pessoa) throws Exception {
		
		ValidarPessoa validacao = new ValidarPessoa();

		if (!validacao.validarPessoa(pessoa).isEmpty())
			throw new Exception("Erros encontrados " + validacao.validarPessoa(pessoa));

	}
	public List<Passageiro> listar(String nome) throws Exception {
		
		return dao.listar(nome);
	}

	public boolean excluir(Long id) throws Exception {
		return dao.excluir(id);

	}
	public Passageiro consultar(Long id) throws Exception{
		return dao.consultar(id);
	}
}
