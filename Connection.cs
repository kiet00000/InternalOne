using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace NewFinalFYP
{
    public class Connection
    {
        public static string constring = "Data Source=ALI;Initial Catalog=Fypfinal;Integrated Security=True";

        public static SqlConnection authorize()
        {
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            return con;
        }
    }
}