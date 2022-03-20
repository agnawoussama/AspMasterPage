<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master"  CodeBehind="CreateStudent.aspx.cs" Inherits="AspMasterPage.CrudPages.CreateStudent" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <head>
    <style type="text/css">
        #listCrud{
            background-color: #c3525282;
            padding: 5px;
            
        }

        #listCrud > li{
            display: inline;
            margin-right: 20px;
            padding: 10px;

        }

        #listCrud > li :hover{
            background-color: #c35252;
            color: white;
        }
        #listCrud > li > a{
            color: #9d0f0f;
            padding: 6px;
            text-decoration: none;
        }

        #liste{
            display: flex;
            justify-content: center;           
            align-items: center;
        }

        td{
            padding: 10px;
        }

    </style>
</head>
          
    <ul id="listCrud" >
        <li><a runat="server" href="~/">Créer Compte</a></li>
        <li><a runat="server" href="~/About">Modifier Compte</a></li>
        <li><a runat="server" href="~/EspaceEtudiant">Supprimer Compte</a></li>
    </ul>

    
    <div id="liste">
        <h1>Liste Des Etudiants</h1>       
        <asp:GridView ID="GridView1" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" CellSpacing="10">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </div>

</asp:Content>
