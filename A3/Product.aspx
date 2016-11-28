<%@ Page Title="ProductDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="A3.Product" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    
    <h2>Product Details</h2>
    
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">

    </asp:FormView>
    <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" s>

        <div class="col-md-6">
            <div class="thumbnail">
                <img src='<%# "Content/images/" + Eval("id") + ".png" %>' />
                <div class="caption">
                    <h3><%# Eval("name") %></h3>
                    <h4>$ <%# Eval("price") %></h4>
                </div>
            </div>
        </div>

    </asp:DetailsView>
</asp:Content>
