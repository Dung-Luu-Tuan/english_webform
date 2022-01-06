<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<div align="center">
             <h1>Thông tin thí sinh</h1>
             <table border="1"
             	style="width: 90%; border: 1px solid black">
             	<thead>
             		<tr style="background-color: skyblue">
                        <th style="text-align: center;">Tên thí sinh</th>
                        <th style="text-align: center;">Số điện thoại</th>
                        <th style="text-align: center;">Giới tính</th>
                        <th style="text-align: center;">Ngày sinh</th>
                        <th style="text-align: center;">Nơi sinh</th>
                        <th style="text-align: center;">CMND</th>
                        <th style="text-align: center;">Ngày cấp</th>
                        <th style="text-align: center;">Nơi cấp</th>
                        <th style="text-align: center;">Trình độ thi</th>
             		</tr>
             	</thead>
             	<tbody align="center">
             			<tr>
                            <td>${thisinh.hoten}</td>
                            <td>${thisinh.sdt}</td>
                            <td>${thisinh.gioitinh}</td>
                            <td><fmt:formatDate pattern = "dd-MM-yyyy"
                                     value = "${thisinh.ngaysinh}" /></td>
                            <td>${thisinh.noisinh}</td>
                            <td>${thisinh.cmnd}</td>
                            <td><fmt:formatDate pattern = "dd-MM-yyyy"
                                     value = "${thisinh.ngaycap}" /></td>
                            <td>${thisinh.noicap}</td>
                            <td>${thisinh.trinhdo}</td>
             			</tr>
             	</tbody>
             </table>
         </div>
</body>