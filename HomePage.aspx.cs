using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography.X509Certificates;
using WebModuleApp.Controllers;
using System.Web.Script.Serialization;

namespace WebModuleApp
{
    public partial class HomePage : System.Web.UI.Page
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

        protected void btnModule_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModuleDetails.aspx");

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayModule.aspx");
        }

        protected void btnRecord_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordStudy.aspx");
        }

        protected void btnRemaining_Click(object sender, EventArgs e)
        {
            Response.Redirect("RemainingHours.aspx");
        }

        protected void btnGraph_Click(object sender, EventArgs e)
        {

           // var modulesData = GetGraphData();

            // Serialize the data to JSON
           // var jsonModulesData = new JavaScriptSerializer().Serialize(modulesData);

            // Execute a JavaScript function to update the graph
//            ClientScript.RegisterStartupScript(this.GetType(), "UpdateGraph", $"updateGraph({jsonModulesData});", true);


        }
       
        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}