<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Infos.ascx.cs" Inherits="AspMasterPage.CrudPages.Infos" %>

<style type="text/css">
    
    #MainContent_Infos1_Label1, #MainContent_Infos1_Label2, #MainContent_Infos1_Label3, #MainContent_Infos1_Label4{
            display: inline-block;
            width: 50%;
        }
</style>
<div id="container">
    <div id="subContainer">
        <asp:Label ID="Label1" runat="server" Text="Numéro d'Etudiant"></asp:Label>
        <asp:DropDownList ID="drpDownNumEtud" runat="server" OnSelectedIndexChanged="drpDownNumEtud_SelectedIndexChanged"></asp:DropDownList>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Nom"></asp:Label>
        <asp:TextBox ID="txtbxNom" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label3" runat="server" Text="Prenom"></asp:Label>
        <asp:TextBox ID="txtbxPrenom" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label4" runat="server" Text="Date De Naissance"></asp:Label>
        <asp:TextBox ID="txtbxDateNaiss" runat="server"></asp:TextBox>
        <br /><br />
    </div>
    
</div>
