<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="login_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form-signin">
        <asp:Label ID="LabelEmail" CssClass="col-md-2" runat="server" Text="Email: "></asp:Label>
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
          <asp:Label ID="LabelEmailExist" runat="server" ></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxEmail" runat="server" ErrorMessage="Introduceti email!" ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Introduceți e-mail valid !" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="LabelPassword" CssClass="col-md-2" runat="server" Text="Parola: "></asp:Label>
        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxPassword" runat="server" ErrorMessage="Introduceti parola!" ControlToValidate="TextBoxPassword"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassowrd" runat="server" ErrorMessage="Introduceți parola între 4 și 15 caractere. Numai literele si numerele sunt permise!" ControlToValidate="TextBoxPassword" ValidationExpression="^[a-zA-Z0-9]\w{3,14}$"></asp:RegularExpressionValidator>
       
        <br />
        <asp:Label ID="LabelPasswordConfirm" CssClass="col-md-2" runat="server" Text="Confirmare parola: "></asp:Label>
        <asp:TextBox ID="TextBoxPasswordConfirm" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxPasswordConfirm" runat="server" ErrorMessage="Introduceti parola!" ControlToValidate="TextBoxPasswordConfirm"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Introduceti aceeasi parola!" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxPasswordConfirm" Operator="Equal"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="LabelAddress" CssClass="col-md-2" runat="server" Text="Adresa: "></asp:Label>
        <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxAddress" runat="server" ErrorMessage="Introducere adresa!" ControlToValidate="TextBoxAddress"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelMobile" CssClass="col-md-2" runat="server" Text="Numar telefon: "></asp:Label>
        <asp:TextBox ID="TextBoxMobile" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ErrorMessage="Introduceti numar telefon!" ControlToValidate="TextBoxMobile"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server" ErrorMessage="Va rog sa introduceti numarul corect de telefon!" ControlToValidate="TextBoxMobile" ValidationExpression="^\+?\d{6,18}$"></asp:RegularExpressionValidator>
        
         <br />
        <br />
        <asp:Label ID="LabelBotCheckInfo" CssClass="col-md-2" runat="server" Text="Tastati simbolurile:"></asp:Label>
        <asp:TextBox ID="LabelBotCheck" runat="server" Text="" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="TextBoxBotCheck" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidatorBotCheck" runat="server" ErrorMessage="Va rog sa introduceti aceleasi simboluri!" ControlToCompare="LabelBotCheck" ControlToValidate="TextBoxBotCheck" Operator="Equal"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTextBoxBotCheck" runat="server" ErrorMessage="Introduceti simbolurile!" ControlToValidate="TextBoxBotCheck"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="ButtonRegister" CssClass="btn btn-primary" runat="server" Text="Register" OnClick="ButtonRegister_Click" />
        <br />
        <asp:ValidationSummary ID="ValidationSummary" runat="server" />
    </div>
</asp:Content>

