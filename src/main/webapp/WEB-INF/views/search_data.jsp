<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <body>
    <div align="center">
        <table border="0" cellpadding="3">
        <h2>Tìm kiếm </h2>
             <form th:action="@{/timkiem}">
                <tr>
                     <td>Tên thí sính: </td>
                     <td><input type="text" name="name" id="name" th:value="${name}" required /></td>
                </tr>
                <tr>
                    <td>Số điện thoại: </td>
                    <td><input type="text" name="sdt" id="sdt" th:value="${sdt}" required /></td>
                </tr>
                <tr>
                    <td colspan="1"><input type="submit" value="Search" /></td>
                </tr>
             </form>
             <h2 style="color: red">${notice}</h2>
        </table>
    </div>

    <c:if test="${datas.size() > 0}">
     <div align="center">
         <h1>Kết quả tìm kiếm</h1>
         <table border="1"
         	style="width: 90%; border: 1px solid black">
         	<thead>
         		<tr style="background-color: skyblue">
         			<th style="text-align: center;">Số báo danh</th>
                    <th style="text-align: center;">Tên thí sinh</th>
                    <th style="text-align: center;">Phòng thi</th>
                    <th style="text-align: center;">Điểm nghe</th>
                    <th style="text-align: center;">Điểm nói</th>
                    <th style="text-align: center;">Điểm đọc</th>
                    <th style="text-align: center;">Điểm viết</th>
         		</tr>
         	</thead>
         	<tbody align="center">
         		<c:forEach var="data" items="${datas}" varStatus="status">
         			<tr>
         				<td>${data.sbd}</td>
                        <td>${data.getThisinh().getHoten()}</td>
                        <td>${data.getPhongthi().getName()}</td>
                        <td>${data.diemnghe}</td>
                        <td>${data.diemnoi}</td>
                        <td>${data.diemdoc}</td>
                        <td>${data.diemviet}</td>
         			</tr>
         		</c:forEach>
         	</tbody>
         </table>
     </div>
     </c:if>
 </body>