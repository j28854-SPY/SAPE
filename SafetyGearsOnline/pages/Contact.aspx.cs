using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SafetyGearsOnline.Pages
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void contactsendlink_Click(object sender, EventArgs e)
        {
            SmtpClient smtpUser = new SmtpClient();
            smtpUser.EnableSsl = true;
            smtpUser.UseDefaultCredentials = false;
            smtpUser.Host = "smtp.gmail.com";
            smtpUser.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("@gmail.com", "");

            smtpUser.Credentials = credentials;

            MailMessage msg = new MailMessage("skuxzypm@gmail.com", contactemailtextboxlink.Text);
            msg.Subject = "Name: " + contactnametextboxlink.Text + " Subject: " + contactsubjecttextboxlink.Text;
            msg.Body = contactmessagetextboxlink.Text;
            smtpUser.Send(msg);


            try
            {

                smtpUser.Send(msg);
                contactresultlbllink.Text = "<p> Successfully Send Secured mail sent using SMTP</p>";


            }
            catch (Exception ex)
            {


                contactresultlbllink.Text = "<p>Failed to Send: " + ex.Message + ":" + ex.InnerException + "</p>";



            }








        }
    }
}