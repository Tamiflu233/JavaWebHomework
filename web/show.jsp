<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/10/16
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            font-family:Helvetica, 'Hiragino Sans GB', 'Microsoft Yahei', '微软雅黑', Arial, sans-serif;
            font-size: 16px;
            font-weight: bolder;
            color: #11998e;
        }
        body {
            background:linear-gradient(90deg, #11998e 0%,#38ef7d 100% );
            perspective: 800px;
        }
        .clearfix::before,
        .clearfix::after{
            content: '';
            display: table;
            clear: both;
        }
        .outer {
            width: 300px;
            height: 400px;
            background-color: #fff;
            border-radius: 20px;
            margin: 170px auto;
            box-shadow: 10px 10px 3px rgba(100,100,100,.3);
            transition: all 1s;
        }
        .outer:hover{
            transform: rotateY(30deg);
        }
        .outer div {
            text-align: center;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <div class="outer clearfix">
        <div class="name">
            <span>姓名: </span><span>${name}</span>
        </div>
        <div class="sex">
            <span>性别: </span><span>${sex}</span>
        </div>
        <div class="age">
            <span>年龄: </span><span>${age}</span>
        </div>
        <div class="hobby">
            <span>爱好: </span>
            <span>${empty hobbies?"无":""}</span>
            <span>${hobbies[0]}</span>
            <span>${hobbies[1]}</span>
            <span>${hobbies[2]}</span>

        </div>
        <div class="school">
            <span>学院: </span><span>${school}</span>
        </div>

    </div>

</body>
</html>
