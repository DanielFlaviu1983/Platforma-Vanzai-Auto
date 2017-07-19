<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddCar.aspx.cs" Inherits="addCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Adaugare Masina:</h2>

    <asp:Label ID="LabelType" runat="server" CssClass="col-md-1" Text="Tip:"></asp:Label>
    <asp:DropDownList ID="DropDownListTypes" runat="server">
        <asp:ListItem Text="Sports" Value="Sports" Selected="True"></asp:ListItem>
        <asp:ListItem Text="Saloon" Value="Saloon"></asp:ListItem>
        <asp:ListItem Text="Hatch-back" Value="Hatch-back"></asp:ListItem>
        <asp:ListItem Text="Cabriolet" Value="Cabriolet"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="LabelMake" runat="server" CssClass="col-md-1" Text="Marca:"></asp:Label>
    <asp:TextBox ID="TextBoxMake" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorMake" runat="server" ErrorMessage="Va rog introduceti marca!" ControlToValidate="TextBoxMake"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LabelModel" runat="server" CssClass="col-md-1" Text="Model:"></asp:Label>
    <asp:TextBox ID="TextBoxModel" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorModel" runat="server" ErrorMessage="Va rog introduceti model!" ControlToValidate="TextBoxModel"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LabelColour" runat="server" CssClass="col-md-1" Text="Telefon:"></asp:Label>
    <asp:TextBox ID="TextBoxColour" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorColour" runat="server" ErrorMessage="Va rog introduceti Telefon!" ControlToValidate="TextBoxColour"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="LabelPicture" runat="server" CssClass="col-md-1" Text="Poza:"></asp:Label>
    <asp:FileUpload ID="FileUploadImage" Text="Upload" AllowMultiple="true" runat="server" />
    <asp:RegularExpressionValidator ID="FileUploadImageValidator" runat="server"
        ControlToValidate="FileUploadImage"
        ErrorMessage="Doar imagini JPEG sunt acceptate"
        ValidationExpression="(.*\.([Jj][Pp][Gg])|.*\.([Jj][Pp][Ee][Gg])$)">
    </asp:RegularExpressionValidator>
    <br />
    <div class="col-md-6">
       
  Puteți încărca mai multe imagini prin menținerea CTRL și selectarea acestora.
    </div>

    <br />
    <asp:Label ID="LabelPrice" runat="server" CssClass="col-md-1" Text="Pret:"></asp:Label>
    <asp:TextBox ID="TextBoxPrice" runat="server" MaxLength="9"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" ErrorMessage="Va rog introduceti pret!" ControlToValidate="TextBoxPrice"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPrice" runat="server" ErrorMessage="Introduceti doar numere!" ControlToValidate="TextBoxPrice" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="LabelYear" runat="server" CssClass="col-md-1" Text="Anul:"></asp:Label>
    <asp:TextBox ID="TextBoxYear" runat="server" MaxLength="9"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorYear" runat="server" ErrorMessage="Va rog introduceti anul!" ControlToValidate="TextBoxYear"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidatorYear" runat="server" ErrorMessage="Introduceti doar numere!" ControlToValidate="TextBoxYear" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="LabelLocation" runat="server" CssClass="col-md-1" Text="Locatia:"></asp:Label>
    <asp:TextBox ID="TextBoxLocation" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorLocation" runat="server" ErrorMessage="Va rog introduceti locatia!" ControlToValidate="TextBoxLocation"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="ButtonAddCar" CssClass="btn btn-primary" runat="server" Text="Adaugare" OnClick="ButtonAddCar_Click" />
    <asp:ValidationSummary ID="ValidationSummaryAddCar" runat="server" />
</asp:Content>

