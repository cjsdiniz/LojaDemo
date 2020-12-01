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
using System.Xml;


namespace ProjectoFinal
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument xmldoc = new XmlDocument();
            xmldoc.Load("https://www.noticiasaominuto.com/rss/ultima-hora");
            Xml1.Document = xmldoc;
        }



        protected void grvPorAutor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPDF_Click(object sender, EventArgs e)
        {
            //string path = ConfigurationSettings.AppSettings.Get("PathFiles");
            string path = ConfigurationManager.AppSettings.Get("PathFiles");
            //string pathPDF = ConfigurationSettings.AppSettings.Get("PathFilesPDF");
            string pathPDF = ConfigurationManager.AppSettings.Get("PathFilesPDF");

            string pdfTemplate = pathPDF + "template\\templateLL.pdf";
            //string pdfTemplateDemo = pathPDF + "template\\template.pdf";
            //Response.Write(pdfTemplate);
            string PDFlista = "lista.pdf";

            string novopdf = pathPDF + PDFlista;
           // Response.Write(novo);

            PdfReader pdr = new PdfReader(pdfTemplate);
            PdfStamper pdfst = new PdfStamper(pdr, new FileStream(novopdf, FileMode.Create));

            AcroFields pdffield = pdfst.AcroFields;

            pdffield.SetField("ListaLivros", grvPorAutor.Rows.ToString());
            pdfst.Close();
            Response.Redirect(path + "PDF/" + PDFlista);
        }


    }
}