<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Home.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Admin Login</li>
    </ol>
     <section class="ab-info-main py-md-5 py-4">
         
        <div class="container py-md-5 py-4">
            <h3 class="tittle text-center mb-lg-5 mb-3"> Admin Login</h3>

      
            <div class="row1 contact-main-info mt-5">
                <div class="col-md-7 contact-right">
                    
                        <div class="form-grp-w3layouts" style="height:70px">
                            <asp:TextBox ID="txtname" CssClass="form-control" placeholder="User Name" runat="server"></asp:TextBox>
                           
                        </div>
                        <div class="form-grp-w3layouts" style="height:70px">
                           <asp:TextBox ID="txtpwd" CssClass="form-control"  placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>

                             <asp:regularexpressionvalidator display="Dynamic" id="RegularExpressionValidator1" 
                                                 errormessage="Password must be 8-10 characters long with at least one numeric,</br>one upper case character and one special character." 
                                                 forecolor="Red" validationexpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+}{:;'?/>.<,])(?!.*\s).*$" 
                                            controltovalidate="txtpwd" runat="server"> </asp:regularexpressionvalidator>

                        </div>
                       
                        <div class="read mt-3">
                            <asp:Button ID="btnsub" CssClass="btn btn-default"  placeholder="Submit" Text="Submit" OnClick="btnsub_Click" runat="server" />
                        </div>
                   
                </div>
                
            </div>


        </div>
    </section>

</asp:Content>

