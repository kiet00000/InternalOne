using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewFinalFYP.Videos
{
    public partial class newvideoplayer : System.Web.UI.Page
    {
        SqlConnection con;
        public static int videoid = 0;
        public static string currentuser = "";
        public static int userid = 0;
        private bool PlayButtonWasClicked = false;

        Stopwatch stopwatch = new Stopwatch();
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
                    videoid = int.Parse(Request.QueryString["VideoId"].ToString());
                    GettingCurrentUser(currentuser);
                    getvideoonLoad();
                    
                    //loadcategorydropdown();
                }
            }
        }





        private void GettingCurrentUser(string currentuser)
        {
            con = Connection.authorize();
            string query = "Select User_Id from UsersTB where E_Mail = '" + currentuser + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                userid = int.Parse(reader[0].ToString());
            }
        }

        public void getvideoonLoad()
        {
            
            con = Connection.authorize();
            string query = "select * from Video where VideoId='" + videoid + "' and User_Id='"+userid+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }

        public void PauseButtonclick(object sender, EventArgs e)
        {
            //string pausetime = HiddenField1.Value;
            var currentTime = DateTime.Now;
            DateTime NewTime;

            //TimeSpan stopwatchElapsed = stopwatch.Elapsed;
            //string stoppedtime = stopwatchElapsed.ToString();

            if (PlayButtonWasClicked == false)
            {
                stopwatch.Start();

                while (PlayButtonWasClicked == false)
                {
                    NewTime = DateTime.Now;
                    if (NewTime.Minute > currentTime.Minute && NewTime.Minute > 2)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "myModal", "openModal();", true);
                        break;
                    }
                }
            }
            else
            {
                stopwatch.Stop();
            }




            //if (PlayButton.click)

            //DateTime latertime = currentTime.AddMinutes(2);
            //if (currentTime == latertime)
            //{

            //}
            //int totaltime = int.Parse(latertime.ToString());

        }

        private void insertVidePauseTimeToDB(string pausetime)
        {
            con = Connection.authorize();
            string query = "insert into Video(PauseTime)values('"+pausetime+"') where VideoId='"+videoid+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Redirect("../User/Login.aspx");
            }
        }

        protected void PlayButton_Click(object sender, EventArgs e)
        {
            PlayButtonWasClicked = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("E_Mail");
            Response.Redirect("~/User/Login.aspx");
        }
    }
}