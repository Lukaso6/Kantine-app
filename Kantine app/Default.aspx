<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kantine_app.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="master.css" />
</head>
<body>
    <form id="form1" runat="server">
             <!-- navbar -->

                        <div class="topnav">
  <a class="active" href="/">Meny</a>
  <a href="WebForm3.aspx">Ukensspesial</a>
  <a href="WebForm2.aspx">Logg inn</a>
</div>

    <!-- meny -->

    <center>
      <div class="meny">
        <h1>Kantine meny</h1>
        <h2 class="glemmen h2">Glemmen vgs</h2>
      </div>
    </center>

    <!-- venstre sirkel -->

    <div class="venstresirkel">
      <div class="matmeny">
        <h2>Mat meny</h2>
      </div>
      <div class="matmeny1">
        <ul>
            <li class="left">Kebab</li>
            <li class="right">60 kr</li>
            <li class="left">Pizza</li>
            <li class="right">55 kr</li>
            <li class="left">Hamburger</li>
            <li class="right">50 kr</li>
            <li class="left">Sushi</li>
            <li class="right">45 kr</li>
            <li class="left">Baguett</li>
            <li class="right">35 kr</li>
            <li class="left">Toast</li>
            <li class="right">30 kr</li>
        </ul>
      </div>
    </div>
    <div class="circler circle1">
      <img src="img/kebab.png" alt="image"/>
    </div>
    <div class="circler circle2">
      <img src="img/pizza-transparent-background-png.png" alt="image"/>
    </div>
    <div class="circler circle3">
      <img src="img/pngtree-burger-food-png-free-download-png-image_13329455.png" alt="image"/>
    </div>
    <div class="circler circle4">
      <img src="img/sushi-with-ai-generated-free-png.png" alt="image"/>
    </div>
    <div class="circler circle5">
      <img src="img/ja..png" alt="image"/>
    </div>
    <div class="circler circle6">
      <img src="img/sandwich-ham-cheese-with-ai-generated-free-png.png" alt="image"/>
    </div>

    <!-- høyresirkel -->

    <div class="høyresirkel">
      <div class="drikkemeny">
        <h2>Drikke meny</h2>
      </div>
      <div class="drikkemeny1">
        <ul>
            <li class="left">Vann</li>
            <li class="right">0 kr</li>
            <li class="left">Cola</li>
            <li class="right">20 kr</li>
            <li class="left">Monster</li>
            <li class="right">22 kr</li>
            <li class="left">Redbull</li>
            <li class="right">23 kr</li>
            <li class="left">Iste</li>
            <li class="right">15 kr</li>
            <li class="left">Eple juice</li>
            <li class="right">10 kr</li>
            <li class="left">Appelsin juice</li>
            <li class="right">12 kr</li>
        </ul>
      </div>
     </div>
    <div class="circlev circle7">
      <img src="img/vann.png" alt="image"/>
    </div>
    <div class="circlev circle8">
      <img src="img/coooola.png" alt="image"/>
    </div>
    <div class="circlev circle9">
      <img src="img/monster.png" alt="image"/>
    </div>
    <div class="circlev circle10">
      <img src="img/redbull.png" alt="image"/>
    </div>
    <div class="circlev circle11">
      <img src="img/iste.png" alt="image"/>
    </div>
    <div class="circlev circle12">
      <img src="img/epple.png" alt="image"/>
    </div>
    <div class="circlev circle13">
      <img src="img/apelsin.png" alt="image"/>
    </div>

    </form>
</body>
</html>
