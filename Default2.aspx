<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="Server">

    <div id="carouselExampleDark" class="carousel carousel-white slide ">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000" style="background-color:#3b5d50 ">
                <%--<img src="..." class="d-block w-100" alt="...">--%>
                <%--<img src="images/sofa.png" />--%>
                <%--<img src="images/sign-with-word-hotel-it_337384-143895.jpg" />--%>
                <img src="images/sign-with-word-hotel-it_337384-143895-removebg-preview.png" class="d-block w-75"  />

                <div class="carousel-caption d-none d-md-block">
                    <h5 class="text-white">First slide label</h5>
                    <img src="images/sign-with-word-hotel-it_337384-143895-removebg-preview.png" />
                    <p class="text-white">Some representative placeholder content for the first slide.</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="2000" style="background-color:#3b5d50 ">
                <%--<img src="images/sofa.png" />--%>
                <%--<img src="..." class="d-block w-100" alt="...">--%>
                <%--<img src="images/red-sign-that-says-word-it_337384-125077.jpg"  class="d-block w-75" />--%>
                <img src="images/red-sign-that-says-word-it_337384-125077-removebg-preview.png" class="d-block w-75" />
             <%--<img src="images/sign-with-word-hotel-it_337384-143895-removebg-preview.png" class="d-block w-75"  />--%>
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="text-white">Second slide label</h5>
                    <p class="text-white">Some representative placeholder content for the second slide.</p>
                </div>
            </div>
            <div class="carousel-item" style="background-color:#3b5d50 ">
               <img src="images/sign-with-word-hotel-it_337384-143895-removebg-preview.png" class="d-block w-75"  />
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="text-white">Third slide label</h5>
                    <p class="text-white">Some representative placeholder content for the third slide.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


            
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
</asp:Content>

