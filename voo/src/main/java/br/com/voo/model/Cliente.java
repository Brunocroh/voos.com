package br.com.voo.model;

public class Cliente extends Entidade {

	private Pessoa pessoa;
	private int milhagem;
	private String senha;
	private Double percentDesconto;
	private TipoCliente tipoCliente;
	private boolean removido;

	public Cliente(Builder build) {
		
		this.pessoa = build.getPessoa();
		this.milhagem = build.getMilhagem();
		this.senha = build.getSenha();
		this.percentDesconto = build.getPercentDesconto();
		this.tipoCliente = build.getTipoCliente();
		this.removido = build.isRemovido();
		
	}
	public Cliente(){
		
	}

	public Cliente(Pessoa pessoa) {
		this.pessoa = pessoa;
	}

	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}

	public int getMilhagem() {
		return milhagem;
	}

	public void setMilhagem(int milhagem) {
		this.milhagem = milhagem;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Double getPercentDesconto() {
		return percentDesconto;
	}

	public void setPercentDesconto(Double percentDesconto) {
		this.percentDesconto = percentDesconto;
	}

	public TipoCliente getTipoCliente() {
		return tipoCliente;
	}

	public void setTipoCliente(TipoCliente tipoCliente) {
		this.tipoCliente = tipoCliente;
	}
	public void setTipoCliente(String tipoCliente) {
		this.tipoCliente = obterDescricao(tipoCliente);
	}

	public boolean isRemovido() {
		return removido;
	}

	public void setRemovido(boolean removido) {
		this.removido = removido;
	}

	public TipoCliente obterDescricao(String descricao) {

		TipoCliente tipo = tipoCliente.Parceiro;
		if (descricao.equals("Cliente"))
			tipo = tipo.clienteFinal;

		return tipo;

	}

	public String obterDescricao(TipoCliente descricao) {

		String tipo = "Parceiro";
		if (descricao == TipoCliente.clienteFinal)
			tipo = "Cliente Final";

		return tipo;

	}
}
