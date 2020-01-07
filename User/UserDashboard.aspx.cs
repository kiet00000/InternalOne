using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace NewFinalFYP.User
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        SqlConnection con;
        public static string filenames = "";
        public static string query = "";
        public static int user_id =0;
        public static string currentuser = "";
        

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
                    loadcategorydropdown();
                }
            }

           
        }

        private void GettingCurrentUser(string email)
        {
            con = Connection.authorize();
            string query = "select User_Id from UsersTB where E_Mail='"+email+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                user_id = int.Parse(reader[0].ToString());
            }
        }

        private void loadcategorydropdown()
        {
            con = Connection.authorize();
            string query = "select * from Category";
            SqlDataAdapter cmd = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            cmd.Fill(dt);
            CategoryDropDownList1.DataTextField = "Category_Name";
            CategoryDropDownList1.DataValueField = "Category_Id";
            CategoryDropDownList1.DataSource = dt;
            CategoryDropDownList1.DataBind();
        }

        //public void FileUpload1_Click(object sender, EventArgs e)
        //{
        //}

        public void Button1_Click(object sender, EventArgs e)
        {
            int count = 0;

            if (CategoryDropDownList1.SelectedValue == "")
            {
                CategoryLabel1.Text = "Please Select a category";
            }
            else
            {
                CategoryLabel1.Text = "You've not Selected any File/Category : " /*+ CategoryDropDownList1.SelectedValue*/;
                if (VideoUpload.HasFiles)
                {
                    foreach (HttpPostedFile uploadedFile in VideoUpload.PostedFiles)
                    {
                        uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Videos"), uploadedFile.FileName));
                        filenames = String.Format("{0}", uploadedFile.FileName);
                        count++;

                        con = Connection.authorize();
                        string query = "insert into Video(VideoName,Category_Id,user_ID) values ('" + filenames + "','" + int.Parse(CategoryDropDownList1.SelectedValue) + "','" + user_id + "')";
                        SqlCommand cmd = new SqlCommand(query, con);


                        int a = cmd.ExecuteNonQuery();
                        if (a > 0)
                        {
                            
                            Response.Write("<script>alert('Successfully Uploaded! You May redirect to VideoPlayer to watch videos');</script>");

                        }
                        Response.Redirect("../Videos/VideoList.aspx");
                        con.Close();



                    }

                }



            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("E_Mail");
            Response.Redirect("~/User/Login.aspx");
        }

        public void Button2_Click(object sender, EventArgs e)
                    {

            
                                con = Connection.authorize();
                                string query = "DELETE FROM Video WHERE VideoId=(SELECT MAX(VideoId) FROM Video)";
                                SqlCommand cmd = new SqlCommand(query, con);

                                 cmd.ExecuteNonQuery();
                                 con.Close();
                                 Response.Write("<script>alert('Successfully Delete!');</script>");


        
                    }
                }
}
       
    
