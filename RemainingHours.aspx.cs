using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebModuleApp.Models;

namespace WebModuleApp
{
    public partial class RemainingHours : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=NAITH;Initial Catalog=ModuleAppDEMO2;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
        public Module Module { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {


                con.Close();
            }
            con.Open();

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


            // Read all lines from the file



        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {

            Module = new Module();
            string searchCode = txtCode.Text;
            int hours = int.Parse(txtHours.Text);

            using (ModuleAppDEMO2Entities dbContext = new ModuleAppDEMO2Entities())
            {
                // Find the module with the given search code
                var module = dbContext.Modules.SingleOrDefault(m => m.Code == searchCode);

                if (module != null)
                {
                    // Create an instance of ModuleSelfStudyHours
                    ModuleSelfStudyHours selfStudyHours = new ModuleSelfStudyHours
                    {
                        ModuleCode = module.Code,
                        ModuleName = module.Name,
                        ModuleCredits = module.Credits.GetValueOrDefault(),
                        ModuleClassHours = module.ClassHoursPerWeek.GetValueOrDefault(),
                        Weeks = 0, // You may need to set the value for Weeks based on your logic
                        SelfStudyHoursPerWeek = ((module.Credits.GetValueOrDefault() * 10) / module.ClassHoursPerWeek.GetValueOrDefault()) - module.ClassHoursPerWeek.GetValueOrDefault()
                    };


                    // Calculate the remaining hours
                    double remainingHours = selfStudyHours.SelfStudyHoursPerWeek - double.Parse(txtHours.Text);

                    // Display the result
                    lblDisplay.Text = $"Module Code: {searchCode} | Remaining Hours: {remainingHours}";
                }
                else
                {
                    // Module not found
                    lblDisplay.Text = $"Module with code {searchCode} not found.";
                }
            }

        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}