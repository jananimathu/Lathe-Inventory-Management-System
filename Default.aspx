<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Home.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Register</li>
    </ol>
    <section class="ab-info-main py-md-5 py-4">

        <div class="container py-md-5 py-4">
            <h3 class="tittle text-center mb-lg-5 mb-3">SIGN UP</h3>
            <div class="row1 contact-main-info mt-5">
                <div class="col-md-7 contact-right">

                     <div class="form-grp-w3layouts" style="height: 70px">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>

                    </div>

                    <div class="form-grp-w3layouts" style="height: 70px">
                        <asp:TextBox ID="txtname" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-grp-w3layouts" style="height: 70px">
                        <asp:TextBox ID="txtmail" CssClass="form-control" placeholder="Mail" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-grp-w3layouts" style="height: 70px">
                        <asp:TextBox ID="txtmobile" CssClass="form-control" placeholder="Mobile" runat="server" pattern="\d{10}" title="Please enter exactly 10 digits" MaxLength="10" ></asp:TextBox>
                    </div>
                    <div class="form-grp-w3layouts" style="height: 70px">
                        <asp:TextBox ID="txtaddress" CssClass="form-control" placeholder="Address"  runat="server"></asp:TextBox>
                    </div>
              
                        <div class="form-grp-w3layouts" style="height: 70px">
                        <asp:TextBox ID="txtusername" CssClass="form-control" placeholder="User Name" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-grp-w3layouts" style="height: 70px">
                        <asp:TextBox ID="txtpwd" placeholder="Password"  CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                  

                    <div class="read mt-3">
                        <asp:Button ID="btnsub" CssClass="btn btn-default" placeholder="Submit" Text="Submit" OnClick="btnsub_Click" runat="server" />
                    </div>

                </div>

            </div>


        </div>
    </section>

</asp:Content>

