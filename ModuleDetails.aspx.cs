using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebModuleApp.Models;

using System.Data.SqlClient;
using System.Data;

namespace WebModuleApp
{





    public partial class ModuleDetails : System.Web.UI.Page
    {
        private User user;

     //   using (var dbContext = new ModuleAppDEMO2Entities());{}

        SqlConnection con = new SqlConnection(@"Data Source=NAITH;Initial Catalog=ModuleAppDEMO2;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
                                                
      

        


        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open) { 
            
            
            con.Close();
            }
            con.Open();

            display();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrWhiteSpace(moduleCode.Text) ||
      string.IsNullOrWhiteSpace(moduleName.Text) ||
      string.IsNullOrWhiteSpace(moduleCredits.Text) ||
      string.IsNullOrWhiteSpace(moduleHours.Text))
            {
                // Display a message indicating that all fields must be filled
                lblMessage.Text = "Please enter valid values for all fields.";
                moduleCode.Text = "";
                moduleName.Text = "";
                moduleCredits.Text = "";
                moduleHours.Text = "";


            }
            else
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO Modules (Code, Name, Credits, ClassHoursPerWeek) VALUES (@Code, @Name, @Credits, @ClassHoursPerWeek)";

                cmd.Parameters.AddWithValue("@Code", moduleCode.Text);
                cmd.Parameters.AddWithValue("@Name", moduleName.Text);
                cmd.Parameters.AddWithValue("@Credits", moduleCredits.Text);
                cmd.Parameters.AddWithValue("@ClassHoursPerWeek", moduleHours.Text);

                cmd.ExecuteNonQuery();

                moduleCode.Text = "";
                moduleName.Text = "";
                moduleCredits.Text = "";
                moduleHours.Text = "";

                display();

                // Redirect to SemesterDetails.aspx after successful insertion
                Response.Redirect("SemesterDetails.aspx");
            }



        }

        public void display() {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Modules";
            cmd.ExecuteNonQuery();
            DataTable dataTable = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dataTable);



        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
            
        }

    }
}