<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
        <div align="center">
            <table border="0" cellpadding="3">
            <h2>Tìm kiếm giấy chứng nhận</h2>
                 <form th:action="@{/chungchi}">
                    <tr>
                         <td><input type="text" name="sbd" id="sbd" th:value="${sbd}" placeholder="Số báo danh..." required /></td>
                         <td colspan="1"><input id="search_chungchi" type="submit" value="Tìm kiếm" /></td>
                    </tr>
                 </form>
                 <h2 style="color: red">${notice2}</h2>
            </table>
        </div>

    <c:if test="${datas.size() > 0}">
    <div style="border-style:solid; border-color: #2684D3; width:850px; height: 850px; margin:100px auto;">
        <h2 style="color:#262BD3; text-align: center; font-weight: bold;">GIẤY CHỨNG NHẬN</h2>
        <h2 style="color:#262BD3; text-align: center; font-weight: bold;">KẾT QUẢ THI CHỨNG CHỈ TIẾNG ANH</h2>
        <p id="trinhdo">Trình độ: ${datas.get(0).getThisinh().getTrinhdo()}</p>
        <form:form >
             <table border="0" cellpadding="5">
                        <tr>
                            <td><h3>Họ tên/ Full Name: </h3></td>&nbsp
                            <td><h3 id="result">${datas.get(0).getThisinh().getHoten()}</h3></td>
                        </tr>
                        <tr>
                            <td><h3>Giới tính/ Gender: </h3></td>&nbsp
                            <td><h3 id="result">${datas.get(0).getThisinh().getGioitinh()}</h3></td>
                        </tr>
                        <tr>
                            <td><h3>Ngày sinh/ Date of birth: </h3></td>&nbsp
                            <td><h3 id="result"><fmt:formatDate pattern = "dd-MM-yyyy"
                                       value = "${datas.get(0).getThisinh().getNgaysinh()}" /></h3></td>
                        </tr>
                        <tr>
                            <td><h3>Quốc tịch/ Nationality: </h3></td>&nbsp
                            <td><h3 id="result">${datas.get(0).getThisinh().getNoisinh()}</h3></td>
                        </tr>
                        <tr><td><p id="diemthi">Điểm thi</p></td></tr>
                        <tr>
                             <td><h3>Điểm nghe/ Listening: </h3></td>&nbsp
                             <td><h3 id="result">${datas.get(0).diemnghe}</h3></td>
                        </tr>
                        <tr>
                               <td><h3>Điểm nói/ Speaking: </h3></td>&nbsp
                               <td><h3 id="result">${datas.get(0).diemnoi}</h3></td>
                        </tr>
                        <tr>
                               <td><h3>Điểm đọc/ Reading: </h3></td>&nbsp
                               <td><h3 id="result">${datas.get(0).diemdoc}</h3></td>
                        </tr>
                        <tr>
                               <td><h3>Điểm viết/ Writing: </h3></td>&nbsp
                               <td><h3 id="result">${datas.get(0).diemviet}</h3></td>
                        </tr>
             </table>
        </form:form>
    </div>
    </c:if>
</body>