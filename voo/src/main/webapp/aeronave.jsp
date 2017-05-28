<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cadastro de Aeronave</title>
</head>
<<<<<<< 040aac31dec3127f4b8f85b75c309b4f69124e91
<body>
	<jsp:include page="header.jsp" />

	<div class="page-header">
		<h1>Aeronave</h1>
		<ul class="breadcrumb">
			<li><a href="index.jsp">home</a></li>
			<li><a href="Aeronave?acao=listar">aeronave</a></li>
		</ul>
	</div>
	<div class="container">


		<div class="bloco">
			<h3>Cadastrar Aeronave</h3>
			<div id="cadastroDeAeronave">
				<form method="POST" action="Aeronave">
					<input class="hide" type="text"
						value="<c:out value="${aeronave.id}"></c:out>" name="aeronave_id">
					<div class="row">
						<div class="form-group col-md-12">
							<label for="">Descrição da Aeronave</label> <input
								class="form-control" type="text"
								value="<c:out value="${aeronave.descricao}"></c:out>"
								name="aeronave_descricao">
						</div>
					</div>
					<div class="text-right">
						<input class="btn btn-success" type="submit" value="Salvar"
							name="botao">
					</div>
				</form>
			</div>
		</div>
		<div class="bloco">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#listaAeronave">Listagem de
								Aeronaves</a>
						</h4>
					</div>
					<div id="listaAeronave" class="panel-collapse collapse">
						<div class="bloco">
							<div class="panel-body">
								<div id="listagem">
									<table class="table table-striped">
										<thead>
											<tr>
												<th class="col-md-2">Código</th>
												<th class="col-md-6">Descrição</th>
												<th class="col-md-4" colspan="2"></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${aeronaves}" var="aeronave">
												<tr>
													<td><c:out value="${aeronave.id}"></c:out></td>
													<td><c:out value="${aeronave.descricao}"></c:out></td>
													<td><a class="btn btn-warning"
														href="/Aeronave?acao=alterar&id=<c:out value="${aeronave.id}"></c:out>">Alterar</a>
													</td>
													<td><a class="btn btn-danger"
														href="/Aeronave?acao=remover&id=<c:out value="${aeronave.id}"></c:out>">Remover</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="bloco">
			<h3>
				Gerenciar Poltronas da Aeronave
				<c:out value="${aeronave.descricao}"></c:out>
			</h3>
			<form method="POST" action="/Aeronave">
				<div class="row">
					<input class="hide" type="text"
						value="<c:out value="${aeronave.id}"></c:out>" name="aeronave_id">
					<div class="form-group col-md-6">
						<label>Valor das Poltronas</label> <input class="form-control"
							type="text" value="<c:out value="${poltrona.valor}"></c:out>"
							name="poltrona_valor">
					</div>
					<div class="form-group col-md-6">
						<label>Classe das Poltronas</label> <input class="form-control"
							type="text" value="<c:out value="${poltrona.classe}"></c:out>"
							name="poltrona_classe">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-6">
						<label>Detalhes das Poltronas</label> <input class="form-control"
							type="text" value="<c:out value="${poltrona.detalhes}"></c:out>"
							name="poltrona_detalhes">
					</div>
					<div class="form-group col-md-6">
						<label>Quantidade de Poltronas</label> <input class="form-control"
							type="text" name="poltrona_quantidade"
							onkeypress="return event.charCode >= 48 && event.charCode <= 57">
					</div>
				</div>

				<div class="text-right">
					<input class="btn btn-success" type="submit" value="Salvar"
						name="botao">
				</div>
			</form>
		</div>

		<div class="bloco">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" href="#listaPoltrona">Listagem de
								Poltronas</a>
						</h4>
					</div>
					<div id="listaPoltrona" class="panel-collapse collapse">
						<div class="bloco">
							<div class="panel-body">
								<div id="listagem">
									<table class="table table-striped">
										<thead>
											<tr>
												<th class="col-md-1">Codigo</th>
												<th class="col-md-3">Descrição</th>
												<th class="col-md-2">Classe</th>
												<th class="col-md-3">Detalhes</th>
												<th class="col-md-1">Valor</th>
												<th class="col-md-2" colspan="2"></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${aeronave.poltronas}" var="poltrona">
												<tr>
													<td class="hide"><c:out value="${poltrona.id}"></c:out></td>
													<td><c:out value="${poltrona.descricao}"></c:out></td>
													<td><c:out value="${poltrona.classe}"></c:out></td>
													<td><c:out value="${poltrona.detalhes}"></c:out></td>
													<td><c:out value="${poltrona.valor}"></c:out></td>
													<td><a class="btn btn-warning"
														href="/Aeronave?acao=alterarPoltrona&id=<c:out value="${poltrona.id}"></c:out>">Alterar</a>
													</td>
													<td><a class="btn btn-danger"
														href="/Aeronave?acao=removerPoltrona&id=<c:out value="${poltrona.id}"></c:out>">Remover</a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<jsp:include page="footer.jsp" />
</body>
=======
    <body>
    <!-- <jsp:include page="header.jsp" /> -->
        <div class="container">
            <div class="bloco">
                <h1>Aeronaves</h1>
                <div class="col-md-5" id="cadastroDeAeronave">
                    <h2>Cadastro de Aeronaves</h2> 
                    <form method="POST" action="Aeronave" >
                        <input class="hide" type="text" 
                            value="<c:out value="${aeronave.id}"></c:out>" name="aeronave_id">

                        <div class="row">
                            <div class="form-group col-md-10">
                                <label for="">Descrição da Aeronave</label>
                                <input class="form-control" type="text"  
                                    value="<c:out value="${aeronave.descricao}"></c:out>" 
                                        name="aeronave_descricao">        
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 form-group">
                                <input class="btn btn-success" type="submit" 
                                value="Cadastrar Aeronave" name="botao">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-7" id="listagem">
                    <h2>Listagem de Aeronaves</h2>
                    <table class="table table-striped naoExibirSeVazia">
                        <thead>
                            <tr>
                                <th>Aeronave</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${aeronaves}" var="aeronave">
                                <tr>
                                    <td>
                                        <c:out value="${aeronave.id}"></c:out>
                                    </td>
                                    <td>
                                        <c:out value="${aeronave.descricao}"></c:out>
                                    </td>
                                    <td>
                                        <a class="btn btn-primary" 
                                            href="/Aeronave?acao=alterar&id=<c:out value="${aeronave.id}"></c:out>">Alterar</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-danger" 
                                            href="/Aeronave?acao=remover&id=<c:out value="${aeronave.id}"></c:out>">Remover</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                
                <div class="col-md-12" id="gerenciamentoDePoltronas">
                    <h2>Gerenciamento de Poltronas da Aeronave 
                        <c:out value="${aeronave.descricao}"></c:out></h2>

                    <table class="table table-striped naoExibirSeVazia">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Descrição</th>
                                <th>Classe</th>
                                <th>Detalhes</th>
                                <th>Valor</th>
                                <th colspan="2"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${aeronave.poltronas}" var="poltrona">
                                <tr>
                                    <td class="hide">
                                        <c:out value="${poltrona.id}"></c:out>
                                    </td>
                                    <td>
                                        <c:out value="${poltrona.descricao}"></c:out>
                                    </td>
                                    <td>
                                        <c:out value="${poltrona.classe}"></c:out>
                                    </td>
                                    <td>
                                        <c:out value="${poltrona.detalhes}"></c:out>
                                    </td>
                                    <td>
                                        <c:out value="${poltrona.valor}"></c:out>
                                    </td>
                                    <td>
                                        <a class="btn btn-warning" 
                                            href="/Aeronave?acao=alterarPoltrona&id=<c:out value="${poltrona.id}"></c:out>">Alterar</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-danger" 
                                            href="/Aeronave?acao=removerPoltrona&id=<c:out value="${poltrona.id}"></c:out>">Remover</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <form method="POST" action="/Aeronave">
                        <div class="row">
                            <input class="hide" id="aeronave_id" type="text" 
                                value="<c:out value="${aeronave.id}"></c:out>" 
                                name="aeronave_id">

                            <div class="form-group col-md-6">
                                <label>Valor das Poltronas</label>
                                <input onkeypress='return event.charCode >= 48 && event.charCode <= 57' 
                                    class="form-control" type="text"  
                                    value="<c:out value="${poltrona.valor}"></c:out>" 
                                    name="poltrona_valor">

                            </div>
                            <div class="form-group col-md-6">
                                <label>Classe das Poltronas</label>
                                <input class="form-control" type="text"  
                                    value="<c:out value="${poltrona.classe}"></c:out>" 
                                    name="poltrona_classe">

                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Detalhes das Poltronas</label>
                                <input class="form-control" type="text"  
                                value="<c:out value="${poltrona.detalhes}"></c:out>" 
                                name="poltrona_detalhes">

                            </div>
                            <div class="form-group col-md-6">
                                <label>Quantidade de Poltronas</label>
                                <input onkeypress='return event.charCode >= 48 && event.charCode <= 57'
                                     class="form-control" 
                                     type="text" 
                                     name="poltrona_quantidade" 
                                     onkeypress="return event.charCode >= 48 && event.charCode <= 57">
                            </div>

                        </div>
                        <input class="btn btn-success" type="submit" 
                            value="Cadastrar Poltronas" name="botao">
                    </form>
                </div>
            </div>
        </div>
        <script src="app/js/tabelas.js"></script>
        <script src="app/js/aeronave.js"></script>
    </body>
>>>>>>> pequenas correções em aeronave, poltrona e entidade
</html>