<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
    <div align="center">
        <table border="0" cellpadding="3">
        <h2>Thống kê </h2>
             <form th:action="@{/thongke}">
                <tr>
                     <td>
                       <select name="trinhdo" id="select3">
                            <option value="A2" th:value="${trinhdo}" required="required" >A2</option>
                            <option value="B1" th:value="${trinhdo}" required="required" >B1</option>
                       </select>
                     </td>
                     <td colspan="1"><input type="submit" value="Search" /></td>
                </tr>
             </form>
             <h2 style="color: red">${notice}</h2>
        </table>
    </div>

    <div align="center">
                 <table border="1"
                 	style="width: 50%; border: 2px solid black; border-collapse: collapse;">
                 		<tr>
                 			<td style="text-align: left; font-weight: bold; border: 2px solid black; border-collapse: collapse;">Trình độ</td>
                 			<td style="text-align: center; border: 2px solid black; border-collapse: collapse;">${trinhdo}</td>
                 	    </tr>
                 	    <tr>
                            <td style="text-align: left; font-weight: bold; border: 2px solid black; border-collapse: collapse;">Số lượng phòng thi</td>
                            <td style="text-align: center; border: 2px solid black; border-collapse: collapse;">${phongthiList.size()}</td>
                        </tr>
                        <tr>
                            <td style="text-align: left; font-weight: bold; border: 2px solid black; border-collapse: collapse;">Số lượng thí sinh</td>
                            <td style="text-align: center; border: 2px solid black; border-collapse: collapse;">${thisinhList.size()}</td>
                        </tr>
                 </table>
    </div>
</body>