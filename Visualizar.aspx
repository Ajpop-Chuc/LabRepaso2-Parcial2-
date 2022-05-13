<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Visualizar.aspx.cs" Inherits="LabRepaso2_Parcial2_.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
         <p>
             <strong>Libros Registrados</strong><br />
         </p>
         <asp:GridView ID="GridView1" runat="server" Height="110px" Width="345px">
         </asp:GridView>
         </div>
    </asp:Content>
