<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login Page  </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            background-image: url("https://images.pexels.com/photos/257894/pexels-photo-257894.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
            background-position: top;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .card {
            /*padding-top: 10px;*/
            margin-top: 4em;
            /*border: 2px solid blue;*/ /*width: 100%;*/
            height: 100%;
        }

        .card-header {
            font-size: 30px;
        }
    </style>
    <link href="assets/css/minn.css" rel="stylesheet" />
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card  bg-white border-info">
                        <asp:Label ID="lblMsg" CssClass="text-black" runat="server"></asp:Label>
                        <div class="card-header text-center text-black border-0">Password reset <i class="fa-solid fa-right-to-bracket"></i></div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Label ID="lblPass" CssClass="text-black" runat="server">Password</asp:Label>
                                        <asp:TextBox ID="txtPass" TextMode="Password" CssClass="form-control  border-success " placeholder="Enter Password" runat="server" MaxLength="12"> </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtPass" Display="Dynamic" ValidationGroup="a"
                                            ErrorMessage="Enter Pass" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Label ID="lblpasswaor" CssClass="text-black" runat="server">Confirm Password</asp:Label>
                                        <asp:TextBox ID="txtConfirmPass" TextMode="Password" CssClass="form-control  border-success " placeholder="Enter Password" runat="server" MaxLength="12"> </asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV" runat="server" ControlToValidate="txtConfirmPass" Display="Dynamic"
                                            ValidationGroup="LoginGroup" ErrorMessage="Enter Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmPass"
                                            ControlToValidate="txtPass" Display="Dynamic" ValidationGroup="a" ErrorMessage="Fill The Same Value" ForeColor="Red"></asp:CompareValidator>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 w-100 text-center">
                                    <div class="form-group">
                                        <asp:Button ID="Resetbtn" runat="server" Text="Reset" CssClass="btn btn-primary" OnClick="Resetbtn_Click" ValidationGroup="a" Width="100%" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12 text-xl-right   ">
                                    <div class="form-group">
                                        <asp:HyperLink ID="HyprLnk" runat="server" CssClass="text-black text-decoration-none" NavigateUrl="~/Loginpage.aspx">Click Here To Login </asp:HyperLink>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
