using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewFinalFYP.User
{
    
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;

        [System.Web.Services.WebMethod]
        public static string GetData(string value1)
        {
            SqlConnection con = new SqlConnection();
            con = Connection.authorize();
            string query = "select * from UsersTB where name = '"+value1+"' ";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                HttpContext.Current.Session["E_Mail"] = reader[1].ToString();
                //Session.RemoveAll();
                return "true";
            }


            return value1;
            //string value = value1;
            //return value;
            //return myJsonString;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!this.IsPostBack)
            {
                //if (Request.InputStream.Length > 0)
                //{
                //    using (StreamReader myreader = new
                //       StreamReader(Request.InputStream))
                //    {
                //        string myhexString = Server.UrlEncode
                //           (myreader.ReadToEnd());
                //        string myimageName = DateTime.Now.ToString
                //           ("dd-MM-yy hh-mm-ss");
                //        string myimagePath = string.Format
                //           ("~/Captures/{0}.png", myimageName);
                //        File.WriteAllBytes(Server.MapPath(myimagePath),
                //           ConvertHexToBytes(myhexString));
                //        Session["MyCapturedImage"] =
                //           ResolveUrl(myimagePath);
                //    }
                //}
            }
        }

        //private static byte[] ConvertHexToBytes(string hex)
        //{
        //    byte[] bytes = new byte[hex.Length / 2];
        //    for (int i = 0; i < hex.Length; i += 2)
        //    {
        //        bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2),
        //           16);
        //    }
        //    return bytes;
        //    throw new NotImplementedException();
        //}

        [WebMethod(EnableSession = true)]
        public static string GetMyCapturedImage()
        {
            string Imageurl = HttpContext.Current.Session
            ["MyCapturedImage"].ToString();
            HttpContext.Current.Session["MyCapturedImage"] = null;
            return Imageurl;
        }
        public void Login_Button_Click(object sender, EventArgs e)
        {
            if (email1.Text == "admin@admin.com" && password1.Text == "admin")
            {
                Session["E_Mail"] = "admin@admin.com";
                Response.Redirect("../admin/AdminDashboard.aspx");
                Session.RemoveAll();
            }
            else
            {
                con = Connection.authorize();
                string query = "select * from UsersTB where E_Mail = '" + this.email1.Text + "' and password = '" + this.password1.Text.ToString() + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    if (email1.Text == reader[1].ToString() && password1.Text == reader[2].ToString())
                    {
                        Session["E_Mail"] = reader[1].ToString();
                        Response.Redirect("UserDashboard.aspx");
                        //Session.RemoveAll();
                    }

                    else
                    {


                        Response.Redirect("Login.aspx");
                    }
                }
            }

            
        }
    }
}