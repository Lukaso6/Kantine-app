<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Kantine_app.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="master.css" />
</head>
<body>
    <form id="form1" runat="server">
                <%-- navbar --%>

                        <div class="topnav">
  <a class="active" href="/">Meny</a>
  <a href="WebForm3.aspx">Ukensspesial</a>
  <a href="WebForm2.aspx">Logg inn</a>
</div>

         <!-- ukensspesial -->
            <center>
       <div class="meny">
            <h1>Ukens spesial</h1>
            <h2 class="glemmen h2">Glemmen vgs</h2>
       </div>
        <div class="adminimg">
            <div class="image">
                <img runat="server" id="Image" src="img/" alt="image"/>
            </div>
        </div>
        <div class="displaydiv">
            <h2 runat="server" class="matrettdisplay" id="Name">test</h2>
        </div>
                </center>
    </form>
</body>
</html>
