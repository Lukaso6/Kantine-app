<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Kantine_app.WebForm2" %>

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


        <%-- mail test --%>

       <div>
            <center>
                <div class="entermail">
                    <div>
                        <h2>Logg inn:</h2>
                    </div>
                    <div>
                        <asp:TextBox runat="server" CssClass="mail" ID="entermail" placeholder="Mail"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox runat="server" CssClass="passord" ID="enterpassord" TextMode="Password" placeholder="Passord"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox runat="server" CssClass="mail" ID="sp" placeholder="Spesiell matrett"></asp:TextBox>
                    </div>
                    <asp:Button runat="server" ID="loginButton" CssClass="loginnbutton" Text="Logg Inn" OnClick="LoginButton_Click"/>
                </div>
                <%-- usynlig --%>
               <%-- <div class="usynligDiv" id="usynligDiv" runat="server" style="display: none;">
                    <div>
                            <h2>Ukens Spesial</h2>
      <asp:TextBox runat="server" CssClass="dashBoard" ID="Smat" placeholder="Ukens Spesial"></asp:TextBox>
      <div class="dropdown">
          <span class="dropdown"></span>
      </div>
          </div>
                </div>--%>
            </center>
        </div>
    </form>
</body>
</html>
