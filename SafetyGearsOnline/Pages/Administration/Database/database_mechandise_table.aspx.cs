using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SafetyGearsOnline.Models;

namespace SafetyGearsOnline.Pages.Administration.Database
{
    public partial class database_mechandise_table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                retrieve_preview();
        }


        private merchandise_table upload_merchandise_table()
        {
            merchandise_table merchandise = new merchandise_table();

            merchandise.idtype = Convert.ToInt32(dbmertabletypesdropdownlink.SelectedValue);
            merchandise.name = dbmertablenametextboxlink.Text;
            merchandise.price = Convert.ToDecimal(dbmertablepricetextboxlink.Text);
            merchandise.about = dbmertableabouttextboxlink.Text;
            merchandise.image = dbmertableimagedropdownlink.SelectedValue;

            return merchandise;


        }



        private void retrieve_preview()
        {
            try
            {
                string[] preview = Directory.GetFiles(Server.MapPath("~/Images/Database/"));


                ArrayList preivewlist = new ArrayList();
                foreach (string display in preview)
                {
                    string displayname = display.Substring(display.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                    preivewlist.Add(displayname);
                }

                dbmertableimagedropdownlink.DataSource = preivewlist;
                dbmertableimagedropdownlink.AppendDataBoundItems = true;
                dbmertableimagedropdownlink.DataBind();


            }
            catch (Exception e)
            {
                upload_mer_table_lbl_results.Text = e.ToString();
            }
        }


        protected void upload_mer_table_button_Click(object sender, EventArgs e)
        {
            merchandise_table_model upload = new merchandise_table_model();
            merchandise_table merchandise = upload_merchandise_table();

            upload_mer_table_lbl_results.Text = upload.AddMerchandise(merchandise);

        }
    }
}