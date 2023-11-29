﻿using System;
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
         
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO Modules (Code, Name, Credits, ClassHoursPerWeek) VALUES ('" + moduleCode.Text + "', '" + moduleName.Text + "', '" + moduleCredits.Text + "', '" + moduleHours.Text + "')";

            cmd.Parameters.AddWithValue("@Code", moduleCode);
            cmd.Parameters.AddWithValue("@Name", moduleName);
            cmd.Parameters.AddWithValue("@Credits", moduleCredits);
            cmd.Parameters.AddWithValue("@ClassHoursPerWeek", moduleHours);

            cmd.ExecuteNonQuery();





            moduleCode.Text = "";
            moduleName.Text = "";
            moduleCredits.Text = "";
            moduleHours.Text = "";



            display();


            // Assuming you are in a code-behind file of a web form
            Response.Redirect("SemesterDetails.aspx");




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
    }
}