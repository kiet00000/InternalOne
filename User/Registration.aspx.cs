using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewFinalFYP
{
    public partial class Registration : System.Web.UI.Page
    {
       
        public static string filenames = "";
        SqlConnection con;
        public static int user_id = 0;
        public static string query = ""; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        //user  IS insert krwa diu   user  ka data

        public void SignUp_Button_Click (object sender, EventArgs e)
        {
            if (password1.Text.ToString() != password2.Text.ToString())
            {
                Label1.Text = "Password not matched";
            }
            else
            {
                bool imagevalue = checkingimages();
                if(imagevalue==true)
                {
                     con = Connection.authorize();
                     string query = "INSERT INTO UsersTB (name,E_Mail, password) VALUES ('" + name1.Text + "','" + email1.Text + "','" + password1.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    GetlastUserID();
                    insertuserImage();
                    Response.Write("<script>alert('Successfully Registered!')</script>");
                    Response.Redirect("Login.aspx");
                }
                con.Close();
                }
               
            }
        }

        private bool checkingimages()
        {
            bool myvalue = false;
             int count = 0;
            if (FileUpload1.HasFiles)
            {
                foreach (HttpPostedFile uploadedFile in FileUpload1.PostedFiles)
                {
                    count++;
                }
                if (count==5)
                {
                    myvalue = true;
                }
                else
                {
                    Response.Write("<script>alert('Upload atleast 5 images');</script>");
                    //Label2.Text = "Upload atleast 5 Image";
                    myvalue =  false;
                }
        }
            return myvalue;
}


        public void GetlastUserID()
        {
            string query = "Select Max (User_Id) from UsersTB";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader(); 
            
            while (reader.Read())
            {
                user_id = int.Parse(reader[0].ToString());
            }

            con.Close();

        }

        public void insertuserImage()
        {

            //string folderName = @"C:\Users\Ali\Desktop\declarationFinal\fypfinal\NewFinalFYP\Images";
            
            string folderName = @"C:\Users\Ali\Desktop\declarationFinal\fypfinal\NewFinalFYP\faceRecognition\dataset";
        


            string pathString = System.IO.Path.Combine(folderName, name1.Text.ToString());




            if (!System.IO.Directory.Exists(pathString))
            {
                string newpath = System.IO.Directory.CreateDirectory(pathString).ToString();

                foreach (HttpPostedFile uploadedFile in FileUpload1.PostedFiles)
                {
                    string relativePath = pathString.Replace(HttpContext.Current.Server.MapPath("~/"), "~/").Replace(@"\", "/");
                    //uploadedFile.SaveAs(relativePath.ToString(), uploadedFile.FileName));

                    uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath(relativePath.ToString()), uploadedFile.FileName));

                    filenames += String.Format(uploadedFile.FileName);

                    con = Connection.authorize();
                    string query = "insert into Image(image_name,user_ID)values('" + filenames + "','" + user_id + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int a = cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
            else
            {
                return;
            }

           filenames = string.Empty;


        }
    }
}

