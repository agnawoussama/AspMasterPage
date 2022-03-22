<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteStudent.aspx.cs" Inherits="AspMasterPage.CrudPages.DeleteStudent" %>

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
            /*display: flex;*/
            border: 1px solid gray;
            border-radius: 7px;
            width: 50%;
            margin: 0px auto;
            padding: 20px;
            justify-content: center;           
            align-items: center;
            flex-direction: column;
        }

        td{
            padding: 10px;
        }
        #MainContent_Label1, #MainContent_Label2, #MainContent_Label3, #MainContent_Label4{
            display: inline-block;
            width: 50%;
        }
        
        #container{
            margin: 0px auto;
            width: 90%;
        }
    </style>
</head>
          
    <ul id="listCrud" >
        <li><a runat="server" href="~/CrudPages/CreateStudent">Créer Compte</a></li>
        <li><a runat="server" href="~/CrudPages/UpdateStudent">Modifier Compte</a></li>
        <li><a runat="server" href="~/CrudPages/DeleteStudent">Supprimer Compte</a></li>
    </ul>

    
    <div id="liste">
        <div id="container">
            <h1 style="text-align:center">Mise a jour de Compte </h1> 
            <div>             
                <asp:Label ID="Label1" runat="server" Text="Numéro d'Etudiant"></asp:Label>
                <asp:DropDownList ID="drpDownNumEtud" runat="server" OnSelectedIndexChanged="drpDownNumEtud_SelectedIndexChanged" ></asp:DropDownList>
                <br /><br />
                <asp:Label ID="Label2" runat="server" Text="Nom"></asp:Label>
                <asp:TextBox ID="txtbxNom" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="Label3" runat="server" Text="Prenom"></asp:Label>
                <asp:TextBox ID="txtbxPrenom" runat="server"></asp:TextBox>
                <br /><br />
               <asp:Button ID="btnSupprimer" runat="server" Text="Supprimer" OnClick="btnSupprimer_Click" />
            </div>
        </div>
    </div>
</asp:Content>

