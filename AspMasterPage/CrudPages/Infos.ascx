<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Infos.ascx.cs" Inherits="AspMasterPage.CrudPages.Infos" %>

<style type="text/css">
    #container{
        display: flex;
        justify-content: center;           
        align-items: center;
    }
</style>
<div id="container">
    <asp:Label ID="Label1" runat="server" Text="Numéro d'Etudiant"></asp:Label>
    <asp:DropDownList ID="drpDownNumEtud" runat="server"></asp:DropDownList>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Nom"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Prenom"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Date De Naissance"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    
</div>
