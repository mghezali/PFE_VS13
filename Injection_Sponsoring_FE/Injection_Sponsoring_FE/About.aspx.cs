using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Injection_Sponsoring_FE
{
    public partial class About : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            CompareValidator1.ValueToCompare = DateTime.Now.ToShortDateString();
            LabelMessage.Text = "";
        }


        protected void LogIn(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                LabelMessage.Text = "Your reservation has been processed.";

                

            }
        }
    }
}