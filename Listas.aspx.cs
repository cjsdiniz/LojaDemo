using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;


namespace ProjectoFinal
{
    public partial class Listas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string path = ConfigurationSettings.AppSettings.Get("PathFiles");
            string path = ConfigurationManager.AppSettings.Get("PathFiles");
            //string pathPDF = ConfigurationSettings.AppSettings.Get("PathFilesPDF");
            string pathPDF = ConfigurationManager.AppSettings.Get("PathFilesPDF");

            string pdfTemplate = pathPDF + "template\\templateLL.pdf";
            string pdfTemplateDemo = pathPDF + "template\\template.pdf";
            //Response.Write(pdfTemplate);
            string listaPDF = "lista.pdf";

            string novo = pathPDF + listaPDF;
            Response.Write(novo);

            PdfReader pdr = new PdfReader(pdfTemplateDemo);
            PdfStamper pdfst = new PdfStamper(pdr, new FileStream(novo, FileMode.Create));

            AcroFields pdffield = pdfst.AcroFields;

            pdffield.SetField("nome",tbNome.Text);
            pdffield.SetField("rua",tbMorada.Text);
            pdfst.Close();
            Response.Redirect(path + "PDF/" + listaPDF);

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnPDF_Click(object sender, EventArgs e)
        {
            Response.Clear();

            Response.AddHeader("content-disposition", "attachment;filename = FileName.xls");
            Response.ContentType = "application/vnd.xls";

            StringWriter stringWrite = new System.IO.StringWriter();

            HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);


            grvPorAutorT.RenderControl(htmlWrite);

            Response.Write(stringWrite.ToString());

            Response.End();
        }

        protected void grvPorAutorT_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grvPorAutor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}