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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        bool ValidaPassword(string pw)
        {
            Regex upper = new Regex("[A-Z]");
            Regex lower = new Regex("[a-z]");
            Regex number = new Regex("[0-9]");
            Regex plica = new Regex("'");
            Regex special = new Regex("[^A-Za-z0-9]");

            if (pw.Length < 6) return false;
            if (upper.Matches(pw).Count < 1) return false;
            if (lower.Matches(pw).Count < 1) return false;
            if (number.Matches(pw).Count < 1) return false;
            if (special.Matches(pw).Count < 1) return false;
            if (plica.Matches(pw).Count > 0) return false;

            return true;
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (ValidaPassword(tbPassword.Text) == true)
            {
                SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["citeformaCS"].ConnectionString);

                SqlCommand myComm = new SqlCommand();

                myComm.Parameters.AddWithValue("@id", tbUsername.Text);
                myComm.Parameters.AddWithValue("@password", EncryptString(tbPassword.Text));

                SqlParameter par = new SqlParameter();
                par.ParameterName = "@ret";
                par.Direction = ParameterDirection.Output;
                par.SqlDbType = SqlDbType.Int;
                par.Size = 1;

                myComm.Parameters.Add(par);

                SqlParameter par2 = new SqlParameter();
                par2.ParameterName = "@ret_perfil";
                par2.Direction = ParameterDirection.Output;
                par2.SqlDbType = SqlDbType.VarChar;
                par2.Size = 20;

                myComm.Parameters.Add(par2);


                myComm.CommandType = CommandType.StoredProcedure;
                myComm.CommandText = "sp_login";

                myComm.Connection = myConn;

                try
                {
                    myConn.Open();
                    myComm.ExecuteNonQuery();
                    int resposta = Convert.ToInt32(myComm.Parameters["@ret"].Value);
                    string resposta_perfil = myComm.Parameters["@ret_perfil"].Value.ToString();

                    if (resposta == 0)
                        lblMensagem.Text = "Utilizador ou Palavra-passe errados";
                    else if (resposta == 1)
                        lblMensagem.Text = "Conta não ativa";
                    else if (resposta == 2)
                    {
                        Session["perfil"] = resposta_perfil;
                        Response.Redirect("encriptacao.aspx");
                    }


                }
                catch (Exception m)
                {
                    Response.Write(m.Message);
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

    }
}