<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CarDetails.aspx.cs" Inherits="CarDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-6" id="images" runat="server">
        </div>
        <div class="col-md-4 col-md-offset-2">
            <div class="form-inline">
                Marca:<asp:Label ID="Labelmake" runat="server" />
                <br />
                Model:<asp:Label ID="LabelModel" runat="server" />
                <br />
                Tip:<asp:Label ID="LabelType" runat="server" />
                <br />
                Telefon:<asp:Label ID="LabelColour" runat="server" />
                <br />
                Anul:<asp:Label ID="LabelYear" runat="server" />
                <br />
                Pretul:<asp:Label ID="LabelPrice" runat="server" />
                <br />
                Locatia:<asp:Label ID="LabelLocation" runat="server" />

                <asp:TextBox ID="TextBoxWishListComment" placeholder="Commentari la lista de dorinte." runat="server" OnTextChanged="TextBoxWishListComment_TextChanged"></asp:TextBox>
                <br />
                <asp:Button ID="ButtonAddtoWishlist" runat="server" CssClass="btn btn-info" Text="Adaugare la lista de dorinte" OnClick="ButtonAddtoWishlist_Click" />
                <br />
                <asp:Label runat="server" ID="LabelLoginWarning" CssClass="text-danger" Visible="False" Text="Vă rugăm să vă autentificați pentru a salva în lista de dorințe sau a face o ofertă."></asp:Label>
                <br />
               
                <asp:Button ID="ButtonRemoveFromWishList" runat="server" CssClass="btn btn-danger" Text="
Eliminați din lista dorințelor" Visible="False" OnClick="ButtonRemoveFromWishList_Click" />
            </div>
        </div>
    </div>
</asp:Content>

