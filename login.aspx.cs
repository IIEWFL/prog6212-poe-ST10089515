using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using WebModuleApp.Models;

namespace WebModuleApp
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=NAITH;Initial Catalog=ModuleAppDEMO2;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

            if (con.State == ConnectionState.Open)
            {


                con.Close();
            }
            con.Open();

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var dbContext = new ModuleAppDEMO2Entities();
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (password != null)
            {
                var user = dbContext.Users.FirstOrDefault(u => u.Username == username);

                if (user != null)
                {
                    byte[] hashedPassword = HashPassword(password);

                    if (hashedPassword.SequenceEqual(user.PasswordHash))
                    {
                        // Passwords match, login is successful.

                        // You may redirect to another page or perform other actions here.
                        // For demonstration purposes, a MessageBox is used.
                        lblMessage.Text = "LOGIN SUCCESSFUL!";
                        lblMessage.ForeColor = System.Drawing.Color.Green;

                        // Clear the input fields.
                        txtUsername.Text = "";
                        // password.Value = "";

                        Response.Redirect("HomePage.aspx");
                    }
                    else
                    {
                        // Passwords do not match.
                        lblMessage.Text = "INCORRECT PASSWORD TRY AGAIN!";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    // User with the provided username doesn't exist in the database.
                    lblMessage.Text = "USER NOT FOUND TRY AGAIN!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                // Handle the case where the password is null
                lblMessage.Text = "Password is null. Please try again.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }




        }
        private byte[] HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] passwordBytes = Encoding.UTF8.GetBytes(password);
                return sha256.ComputeHash(passwordBytes);
            }
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

    }
}