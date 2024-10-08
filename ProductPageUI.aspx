<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductPageUI.aspx.cs" Inherits="ProductPageUI" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Our Product  </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
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
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card ">
                <asp:Label ID="lblMsg" CssClass="text-black" runat="server"></asp:Label>
                <asp:Repeater ID="Rp_Product" ClientIDMode="Static" runat="server">
                    <ItemTemplate>
                        <div class="card-header text-center text-black border-0">

                            <%--   <h2>Our Product</h2>--%>
                            <asp:Label ID="lblimag1" Visible="false" runat="server" Text='<%# Eval("PImageName").ToString()%>'></asp:Label>
                            <asp:Label ID="lblImagepath" Visible="false" runat="server" Text='<%# Eval("PImagePath").ToString()%>'></asp:Label>
                            <asp:Label ID="lblProductName" Visible="false" CssClass="h5 text-dark" runat="server" Text='<%# Eval("ProductName").ToString()%>'></asp:Label>
                            <asp:Label ID="lblPrice" Visible="false" CssClass="h5 text-success" runat="server" Text='<%#  Eval("Price").ToString()%>'></asp:Label>

                        </div>
                        <div class="card-body " style="margin-top: -2rem;">
                            <div class="row">
                                <div class="col-md-4 mt-3 ">
                                    <asp:Image src='<%#"mis"+  Eval("PImagePath").ToString().Replace("..","") %>' class="img-fluid " alt="" ID="lblImage" runat="server" />
                                </div>
                                <div class="col-md-6 ml-5 mt-5">
                                    <div class="mt-3">
                                        <span><%# Eval("ProductName").ToString()%></span>
                                        <div class="mt-3">
                                            <span class=" h5 text-success ">$<%#  Eval("Price").ToString()%></span>
                                        </div>


                                        <div class="mt-3">
                                            <asp:Button ID="Cardbtn" CssClass="btn btn-success" runat="server" Text="Add To Cart" OnClick="Cardbtn_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </ItemTemplate>
                </asp:Repeater>



            </div>
        </div>
    </form>
</body>
</html>



