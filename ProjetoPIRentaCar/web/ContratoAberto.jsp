<%-- 
    Document   : cadastrarContrato
    Created on : 11/04/2015, 12:08:23
    Author     : pc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Contrato</title>
    </head>
       <body>
           <form id="contrato" action="BuscarContratoPagamento" method="POST">
            <input type="hidden" name="userLogado" value="${CPFlogado}">
            <fieldset>
                <legend>Reserva</legend>
                <table>
                    <tr><td>Número da reserva</td><td><input type="text" readonly="readonly" title="Não é possível alterar" name="contrato" value="<c:out value="${contrato.contratoId}"/>"></td></tr>                   
                    <tr><td>Data Retirada </td><td><input type="text" readonly="readonly" title="Não é possível alterar" name="dtRetirada" value="<fmt:formatDate value="${contrato.dataRetirada}" pattern="dd/MM/yyyy"/>"></td></tr>
                    <tr><td>Data Devolução </td><td><input type="text" readonly="readonly" title="Não é possível alterar" name="dtDevolucao" value="<fmt:formatDate value="${contrato.dataDevolucao}" pattern="dd/MM/yyyy"/>"></td></tr>
                    <tr><td>Loja </td><td><select name="filial">
                                <c:choose>
                                    <c:when test="${contrato.filialId == 0}">
                                        <option selected value="0">São Paulo</option>
                                    </c:when>
                                    <c:when test="${contrato.filialId == 1}">
                                        <option selected value="1">Rio de Janeiro</option>
                                    </c:when>
                                    <c:when test="${contrato.filialId == 2}">
                                        <option selected value="2">Porto Alegre</option>
                                    </c:when>
                                    <c:when test="${contrato.filialId == 3}">
                                        <option selected value="3">Belo Horizonte</option>
                                    </c:when>
                                </c:choose>
                            </select></td></tr>            
                    <tr><td>Diárias </td><td><input readonly="readonly" type="text" name="diarias" value="${contrato.quantidadeDiarias}"></td></tr>
                    <tr><td>Valor Total Reserva: </td><td><input readonly="readonly" type="text" name="valor" value="${contrato.saldoReserva}"></td></tr>
                    <tr><td>Veiculo Escolhido</td><td><input type="hidden" name="veiculo" value="${veic.idVeiculo}"><c:out value="${veic.categoria}"/> | <c:out value="${veic.marca}"/> | <c:out value="${veic.nomeVeiculo}"/> | R$<c:out value="${veic.valorCategoria}"/></td></tr>
                    <tr><td>Id:</td><td><input readonly="readonly" title="Não é possível alterar" type="text" name="id" value="${cliente.clienteId}"></td></tr>
                    <tr><td>Nome:</td><td><input readonly="readonly" name="nome" value="${cliente.nome}"></td></tr>
                    <tr><td>CPF:</td><td><input readonly="readonly" name="cpf" value="${cliente.cpf}"></td></tr>
                    <tr><td><button type="submit" name="btGravarContrato">Inserir Pagamento</button></td></tr>
                </table>
            </fieldset>
        </form>
                            <a href="home.jsp">Home</a>
                            <h2>3</h2>
    </body>
</html>