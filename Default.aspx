<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LabRepaso2_Parcial2_._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p class="text-center" style="font-size: x-large">
            <strong>INGRESO DE LIBRO</strong></p>
        <p class="text-left">
            Codigo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxCodigo" runat="server" Width="280px"></asp:TextBox>
        </p>
        <p class="text-left">
            Nombre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxNombre" runat="server" Width="280px"></asp:TextBox>
        </p>
        <p class="text-left">
            Descripcion
            <asp:TextBox ID="TextBoxDescripcion" runat="server" Width="280px"></asp:TextBox>
        </p>
        <p class="text-left">
            Precio de Compra&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxPrecioCompra" runat="server" Width="192px"></asp:TextBox>
        </p>
        <p class="text-left">
            Precio de Venta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxPrecioVenta" runat="server" Width="197px"></asp:TextBox>
        </p>
        <p class="text-left">
            Editorial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxEditorial" runat="server" Width="280px"></asp:TextBox>
        </p>
        <p class="text-left">
            Categoria&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxCategoria" runat="server" Width="280px"></asp:TextBox>
        </p>
        <p class="text-left">
            Autor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxAutor" runat="server" Width="280px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonIngresar" runat="server" OnClick="ButtonIngresar_Click" Text="Ingresar Libro" />
            &nbsp;</p>
    </div>

</asp:Content>
