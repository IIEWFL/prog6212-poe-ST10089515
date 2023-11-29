using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebModuleApp
{
    public partial class SemesterDetails : System.Web.UI.Page


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

        protected void save_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            // Assuming numberofModules.Text and numberofWeeks.Text are numeric
            int numberOfModules;
            int.TryParse(numberofModules.Text, out numberOfModules);

            int numberOfWeeks;
            int.TryParse(numberofWeeks.Text, out numberOfWeeks);

            DateTime startDate1;
            if (DateTime.TryParse(startDate.Text, out startDate1))
            {
                // Only proceed if the parsing is successful

                cmd.CommandText = "INSERT INTO Semesters (NumberofModules, Time, NumberofWeeks) VALUES (@NumberOfModules, @StartDate1, @NumberOfWeeks)";

                cmd.Parameters.AddWithValue("@NumberOfModules", numberOfModules);
                cmd.Parameters.AddWithValue("@StartDate", startDate1);
                cmd.Parameters.AddWithValue("@NumberOfWeeks", numberOfWeeks);

                cmd.ExecuteNonQuery();

                numberofWeeks.Text = "";
                numberofModules.Text = "";
                startDate.Text = "";
            }
            else
            {
                // Handle the case where the DateTime parsing fails, e.g., show an error message.
                // You might want to inform the user that the entered date is not in a valid format.
            }
        }
    }
}