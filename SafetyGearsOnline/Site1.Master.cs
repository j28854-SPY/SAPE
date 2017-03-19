using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafetyGearsOnline
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void facebook_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("www.facebook.com");
        }

        protected void twitter_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("www.twitter.com");
        }

        protected void blog_Click(object sender, ImageClickEventArgs e)
        {
            System.Diagnostics.Process.Start("www.blog.com");
        }
    }
}