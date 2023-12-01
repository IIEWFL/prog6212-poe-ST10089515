using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebModuleApp.Models;



namespace WebModuleApp
{
    public partial class DisplayModule : System.Web.UI.Page
    {
        






        SqlConnection con = new SqlConnection(@"Data Source=NAITH;Initial Catalog=ModuleAppDEMO2;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {


                con.Close();
            }
            con.Open();
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {

            using (var dbContext = new ModuleAppDEMO2Entities())
            {
                string sqlQuery = @"
            SELECT
                DISTINCT m.Code AS ModuleCode,
                m.Name AS ModuleName,
                m.Credits AS ModuleCredits,
                m.ClassHoursPerWeek AS ModuleClassHours,
                s.NumberofWeeks AS Weeks,
                CAST((m.Credits * 10.0 / s.NumberofWeeks - m.ClassHoursPerWeek) AS FLOAT) AS SelfStudyHoursPerWeek,
                CAST((m.Credits * 10.0 / s.NumberofWeeks - m.ClassHoursPerWeek) AS FLOAT) * s.NumberofWeeks AS Hours
            FROM Modules m
            JOIN Semesters s ON 1=1;";

                var results = dbContext.Database.SqlQuery<ModuleSelfStudyHours>(sqlQuery).ToList();

                // Format the results and display in the label
                string formattedResults = "Module Name | Self Study Hours per Week" + Environment.NewLine;
                foreach (var result in results)
                {
                    formattedResults += $"{result.ModuleName} | {result.SelfStudyHoursPerWeek}" + Environment.NewLine;
                }

                lblDisplay.Text = formattedResults;

               
            }


        }

        private void BindGridView()
        {
            using (ModuleAppDEMO2Entities context = new ModuleAppDEMO2Entities())
            {
               
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
    }



