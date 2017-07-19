<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register_success.aspx.cs" Inherits="register_successfully" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="alert alert-success">
        <h2>Te-ai înregistrat cu succes.</h2>
        Acuma poți<a class="btn btn-primary" href="login.aspx">Login</a>
    </div>
</asp:Content>

