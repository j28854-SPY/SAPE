using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SafetyGearsOnline.Models;
using SafetyGearsOnline.Models.EntityFramework;

namespace SafetyGearsOnline.Pages.Administration.Database
{
    public partial class upload_item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                retrieve_preview();


        }


        private item_table upload_item_table()
        {
            item_table itemtable = new item_table();


            itemtable.ItemName = dbitemtablenametextboxlink.Text;
            itemtable.Versions = Convert.ToInt32(dbitemtableversionsdropdownlink.SelectedValue);
            itemtable.ItemDetails = dbitemtabledetailstextboxlink.Text;
            itemtable.ItemCostBND = Convert.ToDecimal(dbitemtablepricetextboxlink.Text);
            itemtable.ItemDisplay = dbitemtabledisplaydropdownlink.SelectedValue;


            return itemtable;


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

                dbitemtabledisplaydropdownlink.DataSource = preivewlist;
                dbitemtabledisplaydropdownlink.AppendDataBoundItems = true;
                dbitemtabledisplaydropdownlink.DataBind();


            }
            catch (Exception e)
            {
                upload_item_table_lbl_results.Text = e.ToString();
            }
        }


        protected void upload_item_table_button_Click(object sender, EventArgs e)
        {
            item_table_model upload = new item_table_model();
            item_table merchandise = upload_item_table();

            upload_item_table_lbl_results.Text = upload.add_item(merchandise);


            System.Threading.Thread.Sleep(3000);

            Response.Redirect("~/Pages/Administration/admin.aspx");




        }

        protected void upload_item_versions_button(object sender, EventArgs e)
        {
            item_versions_model model = new item_versions_model();
            item_versions baru = upload_item_versions();

            upload_item_versions_button_results.Text = model.add_item(baru);

            System.Threading.Thread.Sleep(3000);

            Response.Redirect("~/Pages/Administration/admin.aspx");




        }


        private item_versions upload_item_versions()
        {
            item_versions i = new item_versions();
            i.ItemName = dbitemversionsnametextboxlink.Text;

            return i;


        }
    }
}