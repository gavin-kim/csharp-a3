<%@ Page Title="Kwanii Store" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="A3._Default" %>
<%@ Import Namespace="System.Data" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="jumbotron">
        <h1>Kwanii Store</h1>
        <p class="lead">Welcome to Kwanii Store!</p>
    </div>


    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="col-md-4">
                <div class="thumbnail">
                    <img src='<%# "Content/images/" + Eval("id") + ".png" %>' />
                    <div class="caption">
                        <h3><%# Eval("name") %></h3>
                        <h4>$ <%# Eval("price") %></h4>
                        <a href='<%# "~/Product/" + Eval("id") %>' class="btn btn-primary" 
                           role="button" runat="server">Details</a> 
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
