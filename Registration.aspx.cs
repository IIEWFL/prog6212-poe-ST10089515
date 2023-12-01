using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using WebModuleApp.Models;
namespace WebModuleApp
{
    public partial class Registration : System.Web.UI.Page
    {
        private User user;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=NAITH;Initial Catalog=ModuleAppDEMO2;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

            if (con.State == ConnectionState.Open)
            {


                con.Close();
            }
            con.Open();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var dbContext = new ModuleAppDEMO2Entities();

            HtmlInputPassword passwordInput = (HtmlInputPassword)FindControl("password");

            if (passwordInput != null)
            {
                string name = firstName.Text;
                string lastname = lastName.Text;
                string username = userName.Text;
                string password1 = passwordInput.Value;

                // Hash the password using SHA-256
                byte[] hashedPassword = HashPassword(password1);

                user = new User
                {
                    FirstName = name,
                    LastName = lastname,
                    Username = username,
                    PasswordHash = hashedPassword
                };

                // Add the new user to the database context
                dbContext.Users.Add(user);

                // Save changes to the database
                dbContext.SaveChanges();

                // Display success message or perform any other actions
                lblMessage.Text = "User successfully registered!";
                lblMessage.ForeColor = System.Drawing.Color.Green;


                lastName.Text = "";
                firstName.Text = "";
                userName.Text = "";
                passwordInput.Value = ""; 
            }
        }

        // Hashing function using SHA-256
        private byte[] HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                return sha256.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
            }
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
