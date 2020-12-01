using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace ProjectoFinal
{
    public partial class Exportacoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExcel_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment;filename=ficheiro.xls");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write("<table><tr><td>Nome</td><td>"+tbNome.Text+ "</td></tr><tr><td>Morada</td><td>" + tbMorada.Text + "</td></tr></table>");
            Response.Write(sw.ToString());
            Response.End();

        }

        protected void btnWord_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment;filename=ficheiro.doc");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-word";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write("<table><tr><td>Nome</td><td>" + tbNome.Text + "</td></tr><tr><td>Morada</td><td>" + tbMorada.Text + "</td></tr></table>");
            Response.Write(sw.ToString());
            Response.End();

        }

        protected void btnXml_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment;filename=ficheiro.xml");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "text/xml";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            htw.Write("<dados><nome>"+tbNome.Text+"</nome><morada>"+tbMorada.Text+"</morada></dados>");
            Response.Write(sw.ToString());
            Response.End();
        }

        protected void btnPdf_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("Content-Disposition", "attachment;filename=ficheiro.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            string cont = "<h1>Exemplo PDF</h1><br/><br/>A Loja dos Livros<br/>";
            StringReader sr = new StringReader(cont);

            Document pdfDoc = new Document(PageSize.A4,10f, 10f, 30f, 30f);
            HTMLWorker parser = new HTMLWorker(pdfDoc);

            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            parser.Parse(sr);
            pdfDoc.Close();

            Response.Write(pdfDoc);
            Response.End();

        }
    }
}