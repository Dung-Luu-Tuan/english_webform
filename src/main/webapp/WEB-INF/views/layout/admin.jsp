<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        input[type=text] {
          width: 150%;
          padding: 10px 20px;
          margin: 12px 20px;
          display: inline-block;
          border: 1px solid #ccc;
          border-radius: 4px;
          box-sizing: border-box;
        }

        #select1 {
            width: 50%;
            padding: 10px 20px;
            margin: 20px;
        }

        h3{
            margin: 10px 40px 0px 40px;
        }

        #diemthi {
            margin: 20px 40px;
            color: #3E9EEE;
            font-size: 30px;
        }

        #trinhdo{
            text-align: center;
            font-size: 30px;
            font-weight: bold;
        }

        #result{
            font-weight: bold;
        }

        input[type=date] {
             width: 150%;
             padding: 10px 20px;
             margin: 12px 20px;
        }

        input[type=submit] {
          width: 100%;
          background-color: #4CAF50;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          border-radius: 4px;
          cursor: pointer;
        }
    </style>
</head>
<body>
	<%@include file="/WEB-INF/views/layout/header.jsp" %>

	<decorator:body />

	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>