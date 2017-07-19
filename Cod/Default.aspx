<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="login" runat="server">
        <p class="lead">
            Sunteți logat ca: 
            <asp:Label ID="LabelLoginMail" runat="server"></asp:Label>
        </p>
    </div>
    <div id="notLogin" runat="server">
        <p class="lead">
            Nu sunteti logati,va rog sa va autentificati:
        <asp:Button CssClass="btn btn-primary" ID="ButtonLogin" runat="server" Text="Login" PostBackUrl="login.aspx" />
            sau
            <asp:Button CssClass="btn btn-info" ID="ButtonRegister" runat="server" Text="Register" PostBackUrl="register.aspx" />
        </p>
    </div>
</asp:Content>

