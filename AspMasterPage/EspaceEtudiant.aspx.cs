using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspMasterPage
{
    public partial class EspaceEtudiant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AdoClass ado = new AdoClass();
                try
                {
                    ado.Connecter();
                    ado.command = new System.Data.SqlClient.SqlCommand("Select * from Etudiants", ado.connection);
                    ado.reader = ado.command.ExecuteReader();
                    if (ado.reader.HasRows)
                    {
                        GridView1.DataSource = ado.reader;
                        GridView1.DataBind();
                    }
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