<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loginpage.aspx.cs" Inherits="Loginpage" %>

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

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class=" col-md-4 card border-success bg-gradient  d-flex justify-content-end p-0" id="Card" runat="server" visible="true">
                <asp:Label ID="lblMsg" CssClass="text-black" runat="server"></asp:Label>
                <div class="card-header text-center text-black border-0">
                    <%--<img src="assets/Images/shopping-cart-1019775_640.jpg" />--%>
                    <img src="assets/Images/Loginlogo.jpg" width="45%" class="rounded-circle" />
                </div>
                <div class="card-body" style="margin-top: -2rem;">
                    <div class="row ">
                        <div class="col-md-12">
                            <div class="form-group">
                                <lable>User Id </lable>
                                <div class="input-group  border-danger">
                                    <span class="input-group-text  bg-transparent" id="basic-addon1"><i class="fa-regular fa-envelope-open"></i></span>
                                    <asp:TextBox ID="txtUserId" CssClass="form-control   border-left-0" Placeholder="Enter User Id " aria-label="UserId" aria-describedby="basic-addon1" runat="server" MaxLength="50"> </asp:TextBox>

                                </div>

                                <asp:RegularExpressionValidator ID="REV" runat="server" ControlToValidate="txtUserId" Display="Dynamic"
                                    ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtUserId" Display="Dynamic" ValidationGroup="a"
                                    ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>





                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <lable>Password</lable>

                                <div class="input-group  border-danger">
                                    <span class="input-group-text  bg-transparent" id="basic-addon2"><i class="fa-solid fa-key"></i></span>
                                    <asp:TextBox ID="txtPass" TextMode="Password" CssClass="form-control  " placeholder="Enter Password" aria-label="PassWord" aria-describedby="basic-addon2" runat="server" MaxLength="12"> </asp:TextBox>

                                </div>
                                <asp:RequiredFieldValidator ID="RFV" runat="server" ControlToValidate="txtPass" Display="Dynamic" ValidationGroup="a"
                                    ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 w-100 text-center">
                            <div class="form-group">
                                <asp:Button ID="Loginbtn" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Loginbtn_Click1" ValidationGroup="a" Width="100%" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12  text-xl-right">
                            <div class="form-group">
                                <asp:LinkButton ID="Forgetbtn" runat="server" CssClass=" text-black  text-decoration-none" OnClick="Forgetbtn_Click">Forget Password ?</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <p class="text-black">You Dont Have any Account </p>
                    <div class="row">
                        <div class="col-md-12 text-xl-right ">
                            <div class="form-group">
                                <asp:LinkButton ID="lnkbtn" runat="server" CssClass="text-black text-decoration-none">Sign Up </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




            <div class=" col-md-4 card  bg-white border-info p-0" id="Forget" runat="server" visible="false">
                <asp:Label ID="lblMsg1" CssClass="text-black" runat="server"></asp:Label>
                <div class="card-header text-center text-black border-0">
                    <%--<img src="assets/Images/shopping-cart-1019775_640.jpg" />--%>
                    <img src="assets/Images/Loginlogo.jpg" width="45%" class="rounded-circle" />
                </div>
                <div class="card-body" style="margin-top: -2rem;">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <asp:Label ID="lblEmail" CssClass="text-black" runat="server">Email</asp:Label>
                                <div class="input-group  border-danger">
                                    <span class="input-group-text  bg-transparent" id="basic-addon3"><i class="fa-regular fa-envelope-open"></i></span>
                                    <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control  " aria-label="UserId" aria-describedby="basic-addon3" placeholder="Enter Email" runat="server"> </asp:TextBox>
                                </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic"
                                    ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic"
                                    ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <asp:Button ID="Sendbtn" runat="server" Text="SendMail" CssClass="btn btn-primary" OnClick="SendMailbtnClick" Width="60%" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 text-xl-right   ">
                            <div class="form-group">
                                <asp:HyperLink ID="HyprLnk" runat="server" CssClass="text-black text-decoration-none" NavigateUrl="~/Loginpage.aspx">Back To Login</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </form>
</body>
</html>



