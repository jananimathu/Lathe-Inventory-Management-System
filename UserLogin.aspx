<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Home.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">User Login</li>
    </ol>
     <section class="ab-info-main py-md-5 py-4">
         
        <div class="container py-md-5 py-4">
            <h3 class="tittle text-center mb-lg-5 mb-3"> User Login</h3>
            <div class="row1 contact-main-info mt-5">
                <div class="col-md-7 contact-right">
                    
                        <div class="form-grp-w3layouts" style="height:70px">
                            <asp:TextBox ID="txtname" placeholder="User Name" runat="server"></asp:TextBox>
                           
                        </div>
                        <div class="form-grp-w3layouts" style="height:70px">
                           <asp:TextBox ID="txtpwd"   placeholder="Password" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                       
                        <div class="read mt-3">
                            <asp:Button ID="btnsub"  CssClass="btn btn-default"  placeholder="Submit" Text="Submit" OnClick="btnsub_Click"  runat="server" />
                        </div>
                   
                </div>
                
            </div>


        </div>
    </section>


</asp:Content>

