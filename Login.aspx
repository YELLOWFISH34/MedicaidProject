<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MedicaidProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Aid4Medicaid Admin Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="../MyStyling.css" rel="stylesheet" />
</head>
<body class="templeBG">
    <div class="container">
        <div class="row">
            <div class="login_form_bg">
                <form class="col-center" runat="server">
                    <h2 class="text-center">Aid4Medicaid Admin Login</h2>
                    <br />
                    <div class="row">
                        <div class="span4 text-center">
                            <img src="../img/templelogo.png" />
                        </div>
                        <div class="span4">
                            <br />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="center" for="txtUsername">Username</label>
                        <asp:TextBox runat="server" class="form-control center" ID="txtUserName" placeholder="Accessnet Username" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="center" for="txtPassword">Password</label>
                        <asp:TextBox runat="server" TextMode="Password" class="form-control center" ID="txtPassword" placeholder="Password" required></asp:TextBox>
                    </div>
                    <div id="ForgotPass" style="text-align: center">
                        <asp:HyperLink runat="server" Text="Forgot Password"></asp:HyperLink>
                    </div>
                    <br />
                    <div id="dvError" runat="server" visible="false" style="text-align: center">
                        <asp:Label ID="lblError" ForeColor="Red" Text="" runat="server"></asp:Label>
                    </div>
                    <div style="text-align: center">
                        <asp:Button runat="server" class="btn btn-primary" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
