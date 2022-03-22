using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspMasterPage.CrudPages
{
    public partial class CreateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool EtudiantExiste()
        {
            AdoClass ado = new AdoClass();
            try
            {
                ado.Connecter();
                ado.command = new System.Data.SqlClient.SqlCommand("Select Count(*) from Etudiants Where NE = @ne", ado.connection);
                ado.command.Parameters.AddWithValue("@ne", txtbxNumEtu.Text);
                int count = (int)ado.command.ExecuteScalar();
                if (count == 1)
                    return true;
                else
                    return false;                              
            }
            catch (Exception EX)
            {
                Response.Write(EX.Message);
                throw;
            }
            finally { ado.Deconnecter(); }
        }



        protected void btnEnregistrer_Click(object sender, EventArgs e)
        {
            AdoClass ado = new AdoClass();
            if (EtudiantExiste())
            {
                Response.Write("Ce Etudiant deja existe!");
            }
            else
            {
                try
                {
                    ado.Connecter();
                    ado.command = new System.Data.SqlClient.SqlCommand("Insert into Etudiants Values (@ne, @nom, @pre, @dateNaiss)", ado.connection);
                    ado.command.Parameters.AddWithValue("@ne", txtbxNumEtu.Text);
                    ado.command.Parameters.AddWithValue("@nom", txtbxNom.Text);
                    ado.command.Parameters.AddWithValue("@pre", txtbxPrenom.Text);
                    ado.command.Parameters.AddWithValue("@dateNaiss", DateNaiss.Value);
                    ado.command.ExecuteNonQuery();
                }
                catch (Exception EX)
                {
                    Response.Write(EX.Message);
                    throw;
                }
                finally
                {
                    ado.Deconnecter();
                }
            }


            
        }
    }
}