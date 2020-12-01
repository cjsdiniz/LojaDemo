using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

namespace ProjectoFinal
{
    public partial class LoginChange : System.Web.UI.Page
    {
       
        public void LimpaCampos()
        {
            tbName.Text = null;
            tbUsername.Text = null;
            tbPassword.Text = null;
            tbEmail.Text = null;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["perfil"] == null)
            { 
                Session.Abandon();
                Response.Redirect("index.aspx");
            }
            lblNome.Visible = false;
            tbName.Visible = false;
            tbName.Enabled = false;
            rfvName.Visible = false;
            rfvName.Enabled = false;
            lblEmail.Visible = false;
            tbEmail.Visible = false;
            tbUsername.Text = Session["User"].ToString();
            tbUsername.Enabled = false;
            revEmail.Visible = false;
            revEmail.Enabled = false;
            rfvEmail.Enabled = false;
            rfvEmail.Visible = false;

            if (Session["perfil"].ToString() == "EndUser")
            {
                lblPerfil.Visible = false;
                ddlPerfil.Visible = false;
            }
        }

        bool ValidaPassword(string pw)
        {
            Regex upper = new Regex("[A-Z]");
            Regex lower = new Regex("[a-z]");
            Regex number = new Regex("[0-9]");
            Regex plica = new Regex("'");
            Regex special = new Regex("[^A-Za-z0-9]");

            if (pw.Length < 8) return false;
            if (upper.Matches(pw).Count < 1) return false;
            if (lower.Matches(pw).Count < 1) return false;
            if (number.Matches(pw).Count < 1) return false;
            if (special.Matches(pw).Count < 1) return false;
            if (plica.Matches(pw).Count > 0) return false;

            return true;
        }
        


        protected void btnActualizar_Click(object sender, EventArgs e)
        {

            lblMensagem.Text = "";
            if (ValidaPassword(tbPassword.Text) == false)
            {
                lblMensagem.Text = "Password fraca.";
            }
            else
            {
                lblMensagem.ForeColor = System.Drawing.Color.Empty;
                SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["citeformaCS"].ConnectionString);

                SqlCommand myComm = new SqlCommand();

                myComm.Parameters.AddWithValue("@id", Session["user"]);
                myComm.Parameters.AddWithValue("@password", EncryptString(tbPassword.Text));

                SqlParameter par = new SqlParameter();
                par.ParameterName = "@res";
                par.Direction = ParameterDirection.Output;
                par.SqlDbType = SqlDbType.Int;
                par.Size = 1;

                myComm.Parameters.Add(par);

                myComm.CommandType = CommandType.StoredProcedure;
                myComm.CommandText = "sp_newpwd";

                myComm.Connection = myConn;

                try
                {
                    myConn.Open();
                    myComm.ExecuteNonQuery();
                    int res = Convert.ToInt32(myComm.Parameters["@reS"].Value);
                    if (res == 0)
                    {
                        lblMensagem.ForeColor = System.Drawing.Color.Red;
                        lblMensagem.Text = "Utilizador não actualizado, p.f. valide.";
                    }
                    else
                    {
                        lblMensagem.ForeColor = System.Drawing.Color.DarkGreen;
                        lblMensagem.Text = "Utilizador Actualizado.";
                        btnLoginChange.Enabled = false;
                        btnLoginChange.Visible = false;
                        btnCancelar.Text = "Sair";
                    }
                }
                catch (Exception m)
                {
                    lblMensagem.Text = m.Message;
                }
                finally
                {
                    myConn.Close();
                }
            }
        }
        public static string EncryptString(string Message)
        {
            string Passphrase = "formacao";
            byte[] Results;
            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();

            // Step 1. We hash the passphrase using MD5
            // We use the MD5 hash generator as the result is a 128 bit byte array
            // which is a valid length for the TripleDES encoder we use below

            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));

            // Step 2. Create a new TripleDESCryptoServiceProvider object
            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();

            // Step 3. Setup the encoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;

            // Step 4. Convert the input string to a byte[]
            byte[] DataToEncrypt = UTF8.GetBytes(Message);

            // Step 5. Attempt to encrypt the string
            try
            {
                ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
                Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }

            // Step 6. Return the encrypted string as a base64 encoded string

            string enc = Convert.ToBase64String(Results);
            enc = enc.Replace("+", "KKK");
            enc = enc.Replace("/", "JJJ");
            enc = enc.Replace("\\", "III");
            return enc;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}