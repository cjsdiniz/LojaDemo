using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;


namespace ProjectoFinal
{
    public partial class Loja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logged"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblUser.Text=Session["user"].ToString();
            }
        }
    }
}