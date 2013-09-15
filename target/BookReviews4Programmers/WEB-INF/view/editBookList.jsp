<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Book Reviews</title>
</head>
<body>
  
<h2>Add Book</h2>
  
<form:form method="post" action="add" commandName="book">
  
    <table>
    <tr>
        <td><form:label path="name"><spring:message code="label.bookName"/></form:label></td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td><form:label path="author"><spring:message code="label.author"/></form:label></td>
        <td><form:input path="author" /></td>
    </tr>
    <tr>
        <td><form:label path="language"><spring:message code="label.language"/></form:label></td>
        <td><form:input path="language" /></td>
    </tr>
    <tr>
        <td><form:label path="publisher"><spring:message code="label.publisher"/></form:label></td>
        <td><form:input path="publisher" /></td>
    </tr>
    <tr>
        <td><form:label path="pages"><spring:message code="label.pages"/></form:label></td>
        <td><form:input path="pages" /></td>
    </tr>
    <tr>
        <td><form:label path="ISBN_10"><spring:message code="label.isbn_10"/></form:label></td>
        <td><form:input path="ISBN_10" /></td>
    </tr>
    <tr>
        <td><form:label path="ISBN_13"><spring:message code="label.isbn_13"/></form:label></td>
        <td><form:input path="ISBN_13" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="<spring:message code="label.add"/>"/>
        </td>
    </tr>
</table> 
</form:form>
  
      
<h3>Books</h3>
<c:if  test="${!empty bookList}">
<table class="data">
<tr>
    <th>Name</th>
    <th>Author</th>
    <th>Publisher</th>
    <th>Pages</th>
    <th>Publish Date</th>
    <th>Language</th>
    <th>ISBN-10</th>
    <th>ISBN-13</th>
    <th>&nbsp;</th>
</tr>
<c:forEach items="${bookList}" var="book">
    <tr>
        <td>${book.name}</td>
        <td>${book.author}</td>
        <td>${book.publisher}</td>
        <td>${book.pages}</td>
        <td>${book.publish_date}</td>
        <td>${book.language}</td>
        <td>${book.ISBN_10}</td>
        <td>${book.ISBN_13}</td>
        <td><a href="delete/${book.id}">delete</a></td>
    </tr>
</c:forEach>
</table>
</c:if>
  
</body>
</html>