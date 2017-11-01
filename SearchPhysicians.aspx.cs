using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicaidProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            DataTable dt = new DataTable();
            dt.Columns.Add("fName");
            dt.Columns.Add("lName");
            dt.Columns.Add("NPI");
            dt.Columns.Add("address");
            dt.Columns.Add("practiceName");
            dt.Columns.Add("specialty");
            dt.Columns.Add("city");
            dt.Columns.Add("state");
            dt.Columns.Add("isActive");
            dt.Columns.Add("flagCount");

            dt.Rows.Add(new object[] { "Brian", "Tran", "2415", "703 Cecil B. Moore Ave", "Excel Medical Center", "Primary Care Doctor", "Philadelphia", "PA", "Yes", "2" });
            dt.Rows.Add(new object[] { "John", "Michel", "21455", "521 West Girard", "Philly Medical", "Primary Care Doctor", "Philadelphia", "PA", "Yes", "5" });
            dt.Rows.Add(new object[] { "Sergey", "Dedov", "66466", "601 N. Broad Street", "Philly Medical", "Dentist", "Philadelphia", "PA", "Yes", "0" });

            ds.Tables.Add(dt);

            gvPhysicianSearch.DataSourceID = null;
            gvPhysicianSearch.DataSource = ds.Tables[0].DefaultView;
            gvPhysicianSearch.DataBind();
        }
    }
}