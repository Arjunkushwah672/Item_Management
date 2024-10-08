<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">

      <div class="content-wrapper">
       <!-- Main content -->
       <section class="content">
           <!-- Default box -->
           <div class="row">
               <div class="col-md-12">
                   <div class="box box-Manish">
                       <div class="box-header">
                           <h3 class="box-title"> City Master</h3>
                       </div>
                       <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                       <div class="box-body">
                           <div class="row">

                               

                                <div class="col-md-12">
                                           <div class="form-group">
                                               <label>City Name  <span style="color: red;">*</span></label>
                                               <asp:TextBox ID="txtCityName" ClientIDMode="Static" runat="server" placeholder="Enter  Name..." class="form-control" MaxLength="100"></asp:TextBox>
                                           </div>
                                       </div>


                                <div class="col-md-12">
                                           <div class="form-group">
                                               <label>Description  <span style="color: red;">*</span></label>
                                               <asp:TextBox ID="txtDescription" ClientIDMode="Static" runat="server" TextMode="MultiLine" Rows="6" placeholder="Enter  Description..." class="form-control" MaxLength="100"></asp:TextBox>
                                           </div>
                                       </div>
                         
                               <div class="col-md-2">
                                   <div class="form-group">
                                       <asp:Button ID="Btnsave" CssClass="btn btn-block btn-success" Style="margin-top: 23px;" runat="server" Text="Save" OnClick="Btnsave_Click1" OnClientClick="return validatePersonalDetail();" />
                                   </div>
                               </div>
                           </div>     
                           
                                <div class="row">
                               <div class="col-md-12">
                                   <asp:GridView ID="GridView1" PageCity="50" runat="server" class="table table-hover table-bordered table-striped pagination-ys txt-center" ShowHeaderWhenEmpty="true"
                                       AutoGenerateColumns="False" DataKeyNames="City_Id">
                                       <Columns>
                                           <asp:TemplateField HeaderText="SNo." >
                                               <ItemTemplate>
                                                   <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' ToolTip='<%# Eval("City_Id").ToString()%>' runat="server" />
                                               </ItemTemplate>
                                           </asp:TemplateField>   

                                         

                                           <asp:TemplateField HeaderText="Description" ItemStyle-Width="160" ItemStyle-CssClass="txt-left">
                                               <ItemTemplate>
                                                   <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description").ToString()%>'></asp:Label>
                                               </ItemTemplate>
                                           </asp:TemplateField>


                                           <asp:TemplateField HeaderText="Action" ItemStyle-Width="240">
                                               <ItemTemplate>
                                             <asp:LinkButton ID="lblststus" OnClick="lblststus_Click1" CommandArgument='<%# Eval("City_Id").ToString()%>' CssClass='<%# Eval("Is_Active").ToString()=="1" ? "btn btn-warning" : "btn btn-success" %>' Text='<%# Eval("Is_Active").ToString()=="1" ? "UnPublish" : "Publish" %>' runat="server"></asp:LinkButton>
                                                   <a href='./EditCityMaster.aspx?City_Id=<%# new APIProcedure().Encrypt(Eval("City_Id").ToString()) %>' class="btn btn-default" target="_blank" title="Edit">Edit</a>
                                                   <asp:LinkButton ID="lbDelete" OnClick="lbDelete_Click1" OnClientClick="return confirm('Do you want to delete this record.')" CommandArgument='<%# Eval("City_Id").ToString()%>'  CssClass="btn btn-danger" Text="" runat="server"><i class="fa fa-trash" aria-hidden="true"></i></asp:LinkButton>
                                               </ItemTemplate>
                                           </asp:TemplateField>

                                       </Columns>
                                   </asp:GridView>
                               </div>
                           </div>
                       </div>
                   </div>          
           </div>
      </div>
     </section>
   </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>

