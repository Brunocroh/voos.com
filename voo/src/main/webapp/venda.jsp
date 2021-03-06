<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comprar Passagem | Voos.Com</title>
<jsp:include page="header.jsp" />
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="page-header">
		<h1>Dados da Passagem</h1>
		<ul class="breadcrumb">
			<li><a href="index.jsp">home</a></li>
			<li>dados da passagem</li>
		</ul>
	</div>

	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<div class="alert alert-danger">
					<c:out value="${mensagem}" />
				</div>
			</div>

		</div>
		<div class="espacoTopo"></div>
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="bloco">
					<div class="row">
						<div class="col-md-12">
							<h3>Cliente</h3>
							<hr>
							<div class="col-md-12">
								<label>Nome:</label><label><c:out
										value="${cliente.pessoa.nome}" /></label>
							</div>
							<div class="col-md-6">
								<label>CPF:</label><label><c:out
										value="${cliente.pessoa.cpf.numero}" /></label>
							</div>
							<div class="col-md-6">
								<label>Data de Nascimento:</label><label><c:out
										value="${cliente.pessoa.dataNascimento}" /></label>
							</div>
							<div class="col-md-6">
								<label>Telefone:</label><label><c:out
										value="${cliente.pessoa.telefone}" /></label>
							</div>
							<div class="col-md-6">
								<label>Email: </label><label><c:out
										value="${cliente.pessoa.email}" /></label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h3>Passagem</h3>
							<hr>
							<div class="row">
								<div class="col-md-6">
									<h5>Dados da passagem:</h5>
									<div class="col-md-12">
										<label>Situação:</label><label><c:out
												value="${passagem.situacao}" /></label>
									</div>
									
									
									<div class="col-md-12">
										<label>Voo:</label><label><c:out
												value="${passagem.voo.descricaoVoo}" /></label>
									</div>
									<div class="col-md-12">
										<label>Poltrona:</label><label><c:out
												value="${passagem.poltrona.descricaoPoltrona}" /></label>
									</div>
									<div class="col-md-12">
										<label>Valor:</label><label><c:out
												value="${passagem.valor}" /></label>
									</div>
								</div>
								<div class="col-md-6">

									<h5>Passageiro:</h5>

									<div class="col-md-12">
										<label>Nome:</label><label><c:out
												value="${passagem.passageiro.pessoa.nome}" /></label>
									</div>
									<div class="col-md-12">
										<label>CPF:</label><label><c:out
												value="${passagem.passageiro.pessoa.cpf.numero}" /></label>
									</div>
									<div class="col-md-12">
										<label>Data de Nascimento:</label><label><c:out
												value="${passagem.passageiro.pessoa.dataNascimento}" /></label>
									</div>
									<div class="col-md-12">
										<label>Responsável:</label><label></label>
									</div>
								</div>
							</div>
						</div>
					</div>

					<form action="Venda" method="POST">
						<div class="row">
							<div class="col-md-12">
								<h3>Forma de Pagamento</h3>
								<hr>
								<div class="col-md-6">
									<label>Escolha dentre as opões:</label> <select
										class="form-control" id="formaPagamento" name="formaPagamento"
										value="<c:out value=""/>">
										<option>Dinheiro</option>
										<option>Cartão de Crédito</option>
										<option>Cartão de Débito</option>
									</select>
								</div>
							</div>
						</div>
				</div>

				<div class="text-right">
					<input type="submit" class="btn btn-success"
						value="Comprar Passagem" />
				</div>
				</form>

			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>