using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SafetyGearsOnline.Models;

namespace SafetyGearsOnline.Pages.Administration.Database
{
    public partial class database_merchandise_types : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void upload_mer_types_button(object sender, EventArgs e)
        {
            merchandise_types_model model = new merchandise_types_model();
            merchandise_types baru = upload_merchandise_types();

            upload_mer_types_button_results.Text = model.AddMerchandise(baru);
        }

        private merchandise_types upload_merchandise_types()
        {
            merchandise_types m = new merchandise_types();
            m.name = dbmertypesnametextboxlink.Text;

            return m;


        }

    }
}