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
using static System.Runtime.CompilerServices.RuntimeHelpers;

namespace WebModuleApp
{
    public partial class RecordStudy : System.Web.UI.Page
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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Assuming you have a studyRecord object available for saving
            var date = DateTime.Parse(txtDate.Text);
            double hours = double.Parse(txtHours.Text);

            using (var dbContext = new ModuleAppDEMO2Entities())
            {
                // Create a new StudyRecord entity and set its properties
                var studyRecord = new StudyRecord
                {
                    Date = date,
                    Hours = hours
                };

                // Add the studyRecord to the context
                dbContext.StudyRecords.Add(studyRecord);

                // Save changes to the database
                dbContext.SaveChanges();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string moduleCodeToSearch = txtCode.Text;

            using (var dbContext = new ModuleAppDEMO2Entities())
            {
                // Check if a Module entity with the provided module code exists
                var module = dbContext.Modules.FirstOrDefault(m => m.Code == moduleCodeToSearch);

                if (module != null)
                {
                    // Module with the provided code was found
                    //MessageBox.Show("Module found!");

                    lblMessage.Text = "Module found!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;










                }
                else
                {
                    // Module with the provided code was not found
                    //MessageBox.Show("Module not found");

                    lblMessage.Text = "Module Not found!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }


            }
        }
    }
}