<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <body>
    <div align="center">
        <table border="0" cellpadding="3">
        <h2>Tìm kiếm </h2>
        <c:if test="${khoathiList.size() > 0}">
             <form action="${pageContext.request.contextPath}/timkiem_phongthi">
                <tr>
                     <td>Khóa thi: </td>
                     <td>
                     <select name="khoathi" id="select2" >
                        <c:forEach var="data" items="${khoathiList}">
                             <option value="${data.id}" th:value="${khoathi}" required="required" >${data.tenkhoathi}</option>
                        </c:forEach>
                     </select>
                </tr>
                <tr>
                    <td colspan="1"><input type="submit" value="Search" /></td>
                </tr>
             </form>
        </c:if>
        <c:if test="${phongthiList.size() > 0}">
                     <form action="${pageContext.request.contextPath}/timkiem_thisinh">
                        <tr>
                             <td>Phòng thi: </td>
                             <td>
                             <select name="phongthi" id="select2">
                                <c:forEach var="data" items="${phongthiList}">
                                     <option value="${data.id}" th:value="${phongthi}" required="required" >${data.name}</option>
                                </c:forEach>
                             </select>
                        </tr>
                        <tr>
                            <td colspan="1"><input type="submit" value="Search" /></td>
                        </tr>
                     </form>
        </c:if>
        </table>
    </div>

    <c:if test="${thisinh_phongthiList.size() > 0}">
         <div align="center">
             <h1>Danh sách thi sinh phòng ${thisinh_phongthiList.get(0).getPhongthi().getName()}</h1>
             <table border="1"
             	style="width: 90%; border: 1px solid black">
             	<thead>
             		<tr style="background-color: skyblue">
             			<th style="text-align: center;">Số báo danh</th>
                        <th style="text-align: center;">Tên thí sinh</th>
                        <th style="text-align: center;">Số điện thoại</th>
                        <th style="text-align: center;">Email</th>
                        <th></th>
                        <th></th>
                        <th></th>
             		</tr>
             	</thead>
             	<tbody align="center">
             		<c:forEach var="data" items="${thisinh_phongthiList}" varStatus="status">
             			<tr>
             				<td>${data.sbd}</td>
                            <td>${data.getThisinh().getHoten()}</td>
                            <td>${data.getThisinh().getSdt()}</td>
                            <td>${data.getThisinh().getEmail()}</td>
                            <td><a href="${pageContext.request.contextPath}/thongtincanhan/${data.getThisinh().getId()}"/>Thông tin</a></td>
                            <td><a href="${pageContext.request.contextPath}/timkiem?name=${data.getThisinh().getHoten()}&sdt=${data.getThisinh().getSdt()}"/>Kết quả thi</a></td>
                            <td><a href="${pageContext.request.contextPath}/chungchi?sbd=${data.sbd}"/>Chứng nhận thi</a></td>
             			</tr>
             		</c:forEach>
             	</tbody>
             </table>
         </div>
    </c:if>
    <c:if test="${thisinh_phongthiList.size() == 0}">
        <div align="center">
            <h1 style="color: red">Phòng thi này chưa có thí sinh</h1>
        </div>
    </c:if>
</body>