<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="board.BoardVo"/>
<jsp:useBean id="dao" class="board.BoardDao"/>
<jsp:setProperty property="*" name="vo"/>
<%
	dao.insert(vo);
//response.sendRedirect(request.getContextPath()+ "/board/list.jsp");
%>
<c:redirect url="${pageContext.request.contextPath}/list.jsp"></c:redirect>

