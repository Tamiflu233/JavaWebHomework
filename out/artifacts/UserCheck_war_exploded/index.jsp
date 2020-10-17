<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/10/16
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>主页</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        font-family:"微软雅黑","黑体","宋体";
      }

      /* .clearfix::before,
      .clearfix::after {
        content: '';
        display: table;
        clear: both;
      }
       */
      body {
        background: linear-gradient(90deg, #11998e 0%, #38ef7d 100%);

      }

      .outer {
        background-color: #fff;
        width: 460px;
        height: 400px;
        box-shadow: 10px 10px 3px rgba(100, 100, 100, .3);
        border-radius: 15px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);

      }

      form {
        text-align: center;
        font-size: 18px;
      }


      form div {
        margin: 30px 0;
      }

      .name-wrapper label,
      .age-wrapper label{
        font-size: 20px;
        padding-right: 5px;
        font-weight: 900;
      }

      form div [type="text"] {
        width: 200px;
        height: 30px;
        font-size: 20px;
        text-align: center;
        border: none;
        border-bottom: 2px solid #333;
        outline: none;
        padding: 5px 10px;
      }

      form div [type="text"]:focus,
      .schools-wrapper select:focus {
        border-color: #3eb18b;
      }

      .sex-wrapper {
        width: 400px;
        margin: 0 auto;
      }
      .sex-wrapper .sex-option {
        margin: 0 40px;
      }


      form div select {
        /* width: 250px; */
        height: 30px;
        border-radius: 30px;
        border: 2px solid #000;
        outline: none;
        font-size: 16px;
        padding: 0 2%;
        margin: 0;
      }
      form div select option {
        text-align: center;
      }

      form div [type="submit"]{
        width: 150px;
        height: 35px;
        border: none;
        border-radius: 10px;
        outline: none;
        cursor: pointer;
        color: #fff;
        background-color:  #3eb18b;
        font-size: 18px;
        transition: 0.8s;
      }
      form div [type="submit"]:hover{
        background-color: #fff;
        font-weight: bold;
        color: #3eb18b;
      }

    </style>
  </head>
  <body>
    <div class="outer">
      <form action="/UserCheck/userinfo" method="post">
        <div class="name-wrapper">
          <label for="username" id="name-label">姓名</label>
          <input type="text" id="username" placeholder="输入姓名" name="name">
        </div>
        <div class="sex-wrapper">
          <span class="sex-option">
            <label for="male">
              <input type="radio" id="male" value="男" name="sex" />男
            </label>
          </span>
          <span class="sex-option">
            <label for="female">
              <input type="radio" id="female" value="女" name="sex" />女
            </label>
          </span>
        </div>
        <div class="age-wrapper">
          <label for="age" id="age-label">年龄</label>
          <input type="text" id="age" placeholder="输入年龄" name="age">
        </div>
        <div class="hobbies-wrapper">
          <label for="football">
            <input type="checkbox" value="踢足球" name="hobbies" id="football">踢足球
          </label>
          <label for="basketball">
            <input type="checkbox" value="打篮球" name="hobbies" id="basketball">打篮球
          </label>
          <label for="pingpang">
            <input type="checkbox" value="打乒乓" name="hobbies" id="pingpang">打乒乓
          </label>

        </div>
        <div class="schools-wrapper">
          <select name="schools">
            <option value="外语学院">外语学院</option>
            <option value="光电学院">光电学院</option>
            <option value="管理学院">管理学院</option>
            <option value="机械学院">机械学院</option>
            <option value="理学院">理学院</option>
          </select>
        </div>
        <div class="submit-wrapper">
          <input type="submit" value="submit">
        </div>
      </form>
    </div>
    <script>
      // 处理绝对定位导致的高度塌陷
      let body = document.getElementsByTagName("body")[0];
      let outerHeight = document.querySelector(".outer").offsetHeight;
      let inputUser = document.getElementById("username")
      let UserLabel = document.getElementById("name-label")
      let inputAge = document.getElementById("age")
      let AgeLabel = document.getElementById("age-label")
      inputUser.onfocus = function() {
        UserLabel.style.color = "#3eb18b"
      }
      inputUser.onblur = function() {
        UserLabel.style.color = ""
      }
      inputAge.onfocus = function() {
        AgeLabel.style.color = "#3eb18b"
      }
      inputAge.onblur = function() {
        AgeLabel.style.color = ""
      }
      body.style.height = outerHeight + 'px';

    </script>
  </body>
</html>
