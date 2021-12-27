<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Log In</title>
    <link rel="shortcut icon" href="../../Pics/logo yellow.png" />
    <!-- Fonts -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&family=Roboto:ital,wght@1,100&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Alegreya+Sans:ital,wght@1,500&family=Poppins:wght@200&family=Roboto:ital,wght@1,100&display=swap');
    </style>

    <style>
        /* header */
        .col1row1{
            background-color: #fbc132;
            align-items: center;
            height: 500px;
        }
        .col1row1 img{
            margin-top: -25%;
        }
        .col1row1 p{
            writing-mode: vertical-rl;
            text-orientation: upright;
            margin-left: auto;
            margin-right: auto;
            margin-top: -30%;
            font-size: 35px;
            font-weight: bold;
        }
        .col2row1{
            background-image: url("../../Pics/pic5-1.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 500px;
        }
        .col2row1 ul{
            list-style-type: none;
            float: right;
            margin-top: 2%;
            margin-right: 4%;
        }
        .col2row1 li{
            display: inline-block;
            padding: 15px;
            color: white;
            text-decoration: none;
            font-size: 20px;
        }
        .col2row1 li a{
            text-decoration: none;
            color: white;
        }
        .col2row1 li:hover{
            background-color: #fbc132;
            border-radius: 25px;
        }
        .col2row1 li a:hover{
            color: black;
        }

        /* Popup Wishlist */

        /* The popup form - hidden by default */
        .form-popup {
            display: none;
            position: fixed;
            bottom: 0;
            right: 15px;
            z-index: 9;
        }
        .form-popup .item p{
            font-family: Roboto;
            font-weight: 800;
        }
        .form-popup .vkupno{
            border-top: black 1px solid;
        }
        /* Add styles to the form container */
        .form-container {
            max-width: 300px;
            padding: 10px;
            background-color: #fbc132;
            border-radius: 25px;
        }

        /* Set a style for the submit/login button */
        .form-container .btn {
            background-color: #04AA6D;
            color: white;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
            margin-bottom:10px;
            opacity: 0.8;
        }

        /* Add a red background color to the cancel button */
        .form-container .cancel {
            background-color: red;
        }

        /* Add some hover effects to buttons */
        .form-container .btn:hover, .open-button:hover {
            opacity: 1;
        }

        /* main */
        #main{
            background-color: rgb(36, 36, 36);
        }
        .mainrow1{
            height: 30px;
        }
        .col2row2{
            position: relative;
            background-color: #fbc132;
            height: 600px;
        }
        .col2row2 .najava{
            margin-top: 5%;
        }
        .col2row2 .najava p{
            font-size: 70px;
            font-family: Alegreya Sans;
        }
        .col2row2 .content{
            margin-top: 5%;
            margin-left: 30%;
        }
        .col2row2 .content input{
            border: 3px solid rgb(36, 36, 36);
            border-radius: 25px;
            width: 400px;
            height: 70px;
            padding: 12px 20px;
            margin-bottom: 50px;
        }
        .col2row2 .content .submit{
            background-color: rgb(36, 36, 36);
            color: white;
            font-size: 20px;
        }
        .mainrow3{
            height: 30px;
        }

        /* footer */
        .col1row4{
            background-color: #171717;
            position: relative;
        }
        .col1row4 p, .col1row4 li{
            color: white;
        }
        .col1row4 p{
            position: absolute;
            top: 10%;
            left: 20%;
            text-align:center;
            vertical-align: middle;
            display: table-cell;
        }
        .col1row4 ul{
            position: absolute;
            top: 35%;
            left: 20%;
        }

        .col2row4{
            background-image: url("../../Pics/pic3.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 400px;
        }
        .col3row4{
            background-color: #fbc132;
            position: relative;
        }
        .col3row4 p{
            position: absolute;
            top: 10%;
            left: 15%;
            text-align:center;
            vertical-align: middle;
            display: table-cell;
        }
        .col3row4 ul{
            position: absolute;
            top: 35%;
            left: 20%;
        }
        .col3row4 li{
            padding-top: 30px;
        }
        .col1row4 ul, .col3row4 ul {
            list-style-type: none;

        }
        .col1row4 li a{
            text-decoration: none;
            color: white;
        }
        .col1row4 li:hover{
            background-color: #fbc132;
            border-radius: 25px;
        }
        .col1row4 li a:hover{
            color: black;
        }
        .col1row4 li{
            padding: 18px;
        }
    </style>

    <script>
        // Popup Wishlist
        function openForm() {
            document.getElementById("myForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("myForm").style.display = "none";
        }
    </script>

</head>
<body>
<div id="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2 col1row1">
                <img src="../../Pics/logo black.gif" alt="" width="220px">
                <p>MEALPLUS</p>
            </div>
            <div class="col-lg-10 col2row1">
                <ul>
                    <li><a href="index.html">Почетна</a></li>
                    <li><a href="menu.html">Мени</a></li>
                    <li><a href="signup.html">Регистрaција</a></li>
                    <li><a onclick="openForm()"><img src="../../Pics/shoppingcart.png" width="30px"></a> </li>
                    <li><a href="login.html"><img src="../../Pics/pp.png" width=30px></a></li>
                </ul>

                <div class="form-popup" id="myForm">
                    <form action="/action_page.php" class="form-container">
                        <h1 style="font-family: Alegreya Sans;">Моја кошница</h1>
                        <p style="font-size: 20px; font-family: Roboto; font-weight: 900;"><b>Производи:</b></p>
                        <div class="items">
                            <div class="item">
                                <p>Тост <br> 85.00МКД</p>
                            </div>
                        </div>
                        <p class="vkupno" style="font-family: Alegreya Sans; font-size: 25px;">Вкупно: 85.00МКД</p>
                        <button type="submit" class="btn">Купи</button>
                        <button type="button" class="btn cancel" onclick="closeForm()">Затвори</button>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>

<div id="main">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12-lg mainrow1">

            </div>
        </div>
        <div class="row">
            <div class="col-lg-2 col1row2">

            </div>
            <div class="col-lg-8 col2row2">
                <div class="najava">
                    <p align="center">Најава</p>
                </div>
                <div class="content">
                    <p>${errorMsg}</p>
                    <input type="email" class="email" placeholder="Е-пошта">
                    <input type="password" class="password" placeholder="Лозинка">
                    <input type="submit" class="submit" value="Најави се" >
                </div>
            </div>
            <div class="col-lg-2 col3row2">

            </div>
        </div>
        <div class="row">
            <div class="col-12-lg mainrow3">

            </div>
        </div>
    </div>
</div>

<div id="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col1row4">
                <p style="font-family: Alegreya Sans; font-size: 60px;">Навигација</p>
                <ul>
                    <li><a href="index.html">Почетна</a></li>
                    <li><a href="menu.html">Мени</a></li>
                    <li><a href="login.html">Најава</a></li>
                    <li><a href="signup.html">Регистрaција</a></li>
                </ul>
            </div>

            <div class="col-lg-4 col2row4">

            </div>
            <div class="col-lg-4 col3row4">
                <p style="font-family: Alegreya Sans; font-size: 60px;">Контактирај не</p>
                <ul>
                    <li>mealplus@gmail.com</li>
                    <li>MealPlus</li>
                    <li>mealplus</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>