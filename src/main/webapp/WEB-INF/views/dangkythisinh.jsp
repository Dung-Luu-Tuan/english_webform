<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
    <div align="center">
        <h2>Đăng ký dự thi</h2>
        <form:form action="${pageContext.request.contextPath}/saveNewThiSinh" method="post" modelAttribute="thisinhAdd">
            <table border="0" cellpadding="5">
                <tr>
                    <td>Họ và tên: </td>
                    <td><form:input path="hoten" required="required" /></td>
                </tr>
                <tr>
                    <td>Đặc điểm: </td>
                    <td>
                        <form:select path="gioitinh" id="select1" >
                                <form:option value="Nam" label="Nam"  required="required" />
                                <form:option value="Nữ" lable="Nữ" required="required" />
                        </form:select>
                    </td>
                </tr>
                <tr>
                     <td>Ngày sinh: </td>
                         <td><form:input type="date" path="ngaysinh" required="required" /></td>
                     </tr>
                <tr>
                <tr>
                     <td >Nơi sinh: </td>
                     <td><form:input path="noisinh" required="required" /></td>
                </tr>
                <tr>
                      <td>CMND: </td>
                      <td><form:input path="cmnd" required="required" /></td>
                </tr>
                <tr>
                       <td>Ngày cấp: </td>
                           <td><form:input type="date" path="ngaycap" required="required" /></td>
                       </tr>
                </tr>
                <tr>
                       <td>Nơi cấp: </td>
                       <td><form:input path="noicap" required="required" /></td>
                </tr>
                <tr>
                       <td>Số điện thoại: </td>
                       <td><form:input path="sdt" required="required" /></td>
                </tr>
                <tr>
                       <td>Email: </td>
                       <td><form:input path="email" required="required" /></td>
                </tr>
                <tr>
                       <td >Trình độ: </td>
                       <td>
                            <form:select path="trinhdo" id="select1" >
                                  <form:option value="A2" label="A2" required="required" />
                                  <form:option value="B1" label="B1" required="required" />
                            </form:select>
                       </td>
                </tr>
                    <td colspan="2"><input type="submit" value="Lưu"></td>
                </tr>
            </table>
        </form:form>
    </div>
</body>