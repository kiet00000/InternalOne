using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewFinalFYP.Videos
{
    public partial class Video_List : System.Web.UI.Page
    {
        public static int userid;

        public static string currentuser = "";
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["E_Mail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                foreach (string s in Session)
                {
                    currentuser = Session["E_Mail"].ToString();
                }
                if (!Page.IsPostBack)
                {
                    GettingCurrentUser(currentuser);
                    GetAllVideosOnLoad();  
                    
                    //loadcategorydropdown();
                }
            }


        }

        private void GettingCurrentUser(string currentuser)
        {
            con = Connection.authorize();
            string query = "Select User_Id from UsersTB where E_Mail = '"+currentuser+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                userid = int.Parse(reader[0].ToString());
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("E_Mail");
            Response.Redirect("~/User/Login.aspx");
        }
        private void GetAllVideosOnLoad()
        {
            con = Connection.authorize();
            string query = "select * from Video where User_Id='"+userid+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }
    }
}