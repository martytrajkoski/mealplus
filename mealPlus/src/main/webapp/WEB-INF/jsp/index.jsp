<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>MealPlus</title>
    <link rel="shortcut icon" href="Pics/logo yellow.png" />
    <!-- Fonts -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&family=Roboto:ital,wght@1,100&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Alegreya+Sans:ital,wght@1,500&family=Poppins:wght@200&family=Roboto:ital,wght@1,100&display=swap');
    </style>

    <style>

        /* header */
        .col1row1{
            background-image: url("Pics/pic1.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 800px;
        }
        .col1row1 img{
            margin-left: -1%;
        }
        .col2row1{
            background-color: #fbc132;
            align-items: center;
        }
        .col2row1 p{
            writing-mode: vertical-rl;
            text-orientation: upright;
            margin-left: auto;
            margin-right: auto;
            font-size: 70px;
            font-weight: bold;

        }
        .col3row1{
            background-image: url("Pics/pic4.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .col3row1 ul{
            float: right;
            list-style-type: none;
            margin-top: 3%;
            margin-right: 5%;
        }
        .col3row1 li{
            display: inline-block;
            padding: 15px;
            color: white;
            font-size: 22px;
        }
        .col3row1 li a{
            text-decoration: none;
            color: white;
        }
        .col3row1 li:hover{
            background-color: #fbc132;
            border-radius: 25px;
        }
        .col3row1 li a:hover{
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

        /* post1 */
        #post1{
            background-image: url("Pics/pic6.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 500px;
            position: relative;
        }
        .col2row2{
            height: 500px;
        }
        .col2row2 .content{
            position: absolute;
            top: 15%;
            color: white;
        }
        .col2row2 .btn{
            position: absolute;
            top: 65%;
            background-color: #fbc132;
            border-radius: 25px;
            padding: 8px 25px 8px 25px;
            font-size: 25px;
        }
        .col2row2 .btn:hover{
            background-color: #5c5c5c;
        }
        /* post2 */
        .col1row3{
            background-image: url("Pics/pic2.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 500px;
        }
        .col2row3{
            background-color: #171717;
        }
        .col2row3{
            position: relative;
            float: right;
        }
        .col2row3 img{
            position: absolute;
            top: 15%;
            left: 10%;
        }
        .col2row3 .content{
            position: absolute;
            top: 25%;
            right: 3%;
            color: white;
        }
        .col2row3 .content p{
            float: right;
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
        .col1row4 li{
            padding: 18px;
        }
        .col2row4{
            background-image: url("Pics/pic3.jpg");
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
            <div class="col-lg-5 col1row1">
                <img src="Pics/logo yellow.png" alt="" width="220px" >
            </div>
            <div class="col-lg-2 col2row1">
                <p>MEALPLUS</p>
            </div>
            <div class="col-lg-5 col3row1">
                <ul>
                    <li><a href="index.html">Почетна</a></li>
                    <li><a href="menu.html">Мени</a></li>
                    <li><a href="signup.html">Регистрaција</a></li>
                    <li><a onclick="openForm()"><img src="Pics/shoppingcart.png" width="30px"></a> </li>
                    <li><a href="login.html"><img src="Pics/pp.png" width=30px></a></li>
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

<div id="post1">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-1 col1row2">
                <br>
            </div>
            <div class="col-lg-4 col2row2">
                <div class="content">
                    <p style="font-family: Alegreya Sans; font-size: 60px;">Нашето мени</p> <br>
                    <p style="font-family: Roboto;font-size: 20px;">Секое јадење во нашето мени <br>
                        е направено со високо квалитетни производи <br>
                        од нашите партнери-ресторани низ град Скопје.</p>
                </div>
                <div class="btn">
                    <a href="menu.html" style="text-decoration: none; color: black;">Мени</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="post2">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-5 col1row3">
                <br>
            </div>
            <div class="col-lg-7 col2row3">
                <img src="Pics/form.png" height="350px"alt="">
                <div class="content">
                    <p style="font-family: Alegreya Sans; font-size: 60px;">Наша цел, ваше задоволство</p> <br>
                    <p style="font-family: Roboto; font-size: 20px;">Доручек, ручек, вечера или можеби десерт? <br>
                        Нарачајте вкусен оброк по ниска цена и висока вредност. <br>
                        Без непотребни отпадоци од храна, за сечиј вкус, за секого. <br>
                        Уживајте!</p>
                </div>
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