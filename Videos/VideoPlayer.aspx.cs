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
    public partial class Video_Player : System.Web.UI.Page
    {
        public static int videoid = 0;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["E_Mail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    binddropdownlistcategory();
                    getvideoOnLoad();
                }
            }
            
        }

        private void getvideoOnLoad()
        {
            con = Connection.authorize();
            string query = "select * from Video where VideoId='" + videoid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        private void binddropdownlistcategory()
        {
            con = Connection.authorize();
            string query = "select * from Category";
            SqlDataAdapter cmd = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            DropDownList1.DataTextField = "Category_Name";
            DropDownList1.DataValueField = "Category_Id";
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
        }

        public void GetVideo()
        {
            con = Connection.authorize();
            string query = "select * from Video where Category_Id = " + int.Parse(DropDownList1.SelectedValue) + "";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetVideo();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("E_Mail");
            Response.Redirect("~/User/Login.aspx");
        }
    }
}