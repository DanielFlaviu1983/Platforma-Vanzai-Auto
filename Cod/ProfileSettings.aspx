<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProfileSettings.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Modificați setările profilului:</h2>
    <asp:Label ID="LabelPassword" CssClass="col-md-2" runat="server" Text="Parola: "></asp:Label>
    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassowrd" runat="server" ErrorMessage="Introduceți parola între 4 și 15 caractere. Numai literele si numerele sunt permise!" ControlToValidate="TextBoxPassword" ValidationExpression="^[a-zA-Z0-9]\w{3,14}$"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="LabelPasswordConfirm" CssClass="col-md-2" runat="server" Text="Confirmare parola: "></asp:Label>
    <asp:TextBox ID="TextBoxPasswordConfirm" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Introduceti parola!" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxPasswordConfirm" Operator="Equal"></asp:CompareValidator>
    <br />
    <br />
    <asp:Label ID="LabelAddress" CssClass="col-md-2" runat="server" Text="Adresa: "></asp:Label>
    <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxAddress" runat="server" ErrorMessage="Introducere adresa!" ControlToValidate="TextBoxAddress"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LabelMobile" CssClass="col-md-2" runat="server" Text="Numar telefon: "></asp:Label>
    <asp:TextBox ID="TextBoxMobile" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ErrorMessage="Introduceti numar telefon!" ControlToValidate="TextBoxMobile"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server" ErrorMessage="Va rog sa  introduceti numar corect de telefon!" ControlToValidate="TextBoxMobile" ValidationExpression="^\+?\d{6,18}$"></asp:RegularExpressionValidator>
    <br />
    <asp:Button ID="ButtonUpdate" CssClass="btn btn-warning" runat="server" Text="Update" OnClick="ButtonUpdate_Click" />
    <br />
    <asp:ValidationSummary ID="ValidationSummary" runat="server" />
</asp:Content>

