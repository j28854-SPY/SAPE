using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafetyGearsOnline.Pages.MasterPage
{
    public partial class template : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bloggerlink_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("https://www.blogger.com");
        }

        protected void twitterlink_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("https://www.twitter.com");
        }

        protected void facebooklink_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("https://www.facebook.com");
        }
    }
}