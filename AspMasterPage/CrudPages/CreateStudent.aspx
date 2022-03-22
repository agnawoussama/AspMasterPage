﻿<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master"  CodeBehind="CreateStudent.aspx.cs" Inherits="AspMasterPage.CrudPages.CreateStudent" %>

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
        #DateNaiss{
            width: 100%;
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
            <h1 style="text-align:center">Nouveau Compte </h1> 
            <p>Saisir les informations de l'étudiant ici:</p>
            <div>             
                <asp:Label ID="Label1" runat="server" Text="Numéro d'Etudiant"></asp:Label>
                <asp:TextBox ID="txtbxNumEtu" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="Label2" runat="server" Text="Nom"></asp:Label>
                <asp:TextBox ID="txtbxNom" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="Label3" runat="server" Text="Prenom"></asp:Label>
                <asp:TextBox ID="txtbxPrenom" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Label ID="Label4" runat="server" Text="Date De Naissance"></asp:Label>
                <input id="DateNaiss" runat="server" type="date" />
                <br /><br />
                <asp:Button ID="btnEnregistrer" runat="server" Text="Enregistrer" OnClick="btnEnregistrer_Click" />
            </div>
        </div>
    </div>
</asp:Content>

