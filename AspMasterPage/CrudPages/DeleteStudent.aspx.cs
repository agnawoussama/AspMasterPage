using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspMasterPage.CrudPages
{
    public partial class DeleteStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drpDownNumEtud.AutoPostBack = true;
                AdoClass ado = new AdoClass();
                try
                {
                    ado.Connecter();
                    ado.command = new System.Data.SqlClient.SqlCommand("Select * from Etudiants", ado.connection);
                    ado.reader = ado.command.ExecuteReader();
                    if (ado.reader.HasRows)
                    {
                        drpDownNumEtud.DataSource = ado.reader;
                        drpDownNumEtud.DataTextField = "NE";
                        drpDownNumEtud.DataValueField = "NE";
                        drpDownNumEtud.DataBind();
                        ListItem liCountry = new ListItem("Selectionnez un etudiant", "-1");
                        drpDownNumEtud.Items.Insert(0, liCountry);
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

        protected void btnSupprimer_Click(object sender, EventArgs e)
        {
            AdoClass ado = new AdoClass();
            try
            {
                ado.Connecter();
                ado.command = new System.Data.SqlClient.SqlCommand("Delete From Etudiants Where NE = @ne", ado.connection);
                ado.command.Parameters.AddWithValue("@ne", drpDownNumEtud.SelectedValue);
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

        protected void drpDownNumEtud_SelectedIndexChanged(object sender, EventArgs e)
        {
            AdoClass ado = new AdoClass();
            try
            {
                ado.Connecter();
                ado.command = new System.Data.SqlClient.SqlCommand("Select * from Etudiants where NE = @dropDownListValue", ado.connection);
                ado.command.Parameters.AddWithValue("@dropDownListValue", drpDownNumEtud.SelectedValue);
                ado.reader = ado.command.ExecuteReader();
                ado.reader.Read();
                txtbxNom.Text = ado.reader[1].ToString();
                txtbxPrenom.Text = ado.reader[2].ToString();
            }
            catch (Exception EX)
            {
                Response.Write(drpDownNumEtud.DataTextField);
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