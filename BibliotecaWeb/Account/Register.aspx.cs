using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using BibliotecaWeb.Models;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace BibliotecaWeb.Account
{
    public partial class Register : Page
    {

        protected void CreateUser_Click(object sender, EventArgs e)


        {
            try
            {
                using (var cn = new SqlConnection(
                  ConfigurationManager.ConnectionStrings["Biblioteca"].ConnectionString))
                {
                    using (var cmd = new SqlCommand("PROC_INSERT_PERFIL", cn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@email", Email.Text);
                        cmd.Parameters.AddWithValue("@senha", Password.Text);
                        cmd.Parameters.AddWithValue("@confirmacaosenha", ConfirmPassword.Text);

                        cn.Open();



                        cmd.ExecuteNonQuery();

                        var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                        var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
                        var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
                        IdentityResult result = manager.Create(user, Password.Text);
                        

                        
                        if (cn.State != ConnectionState.Closed)
                        { cn.Close(); }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }
    }
}
