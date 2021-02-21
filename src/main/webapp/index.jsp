<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:query var="rs" dataSource="jdbc/MeuDB">
select CURRENT_DATE now from dual
</sql:query>
<html>
<body>
	<h2>Utilizando as taglibs JSTL sql e core:</h2>
	<c:forEach var="row" items="${rs.rows}">
	${row.now }<br />
	</c:forEach>
</body>
</html>
