using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MaoWeb
{
    public partial class About : Page
    {
        string Action = "";
        string connectionString = "Data Source=192.168.11.16;Initial Catalog=FamilyDB;Persist Security Info=True;User ID=maomao;Password=maomao";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["Action"]))
            {
                Action = Request.QueryString["Action"].Trim().ToLower();
            }

            if (Action=="add")
            {
                string EventNum = Request.Form.Get("EventNum");
                string Name = Request.Form.Get("Name");
                string Contents = Request.Form.Get("Contents");
                string State = Request.Form.Get("State");
                string times = DateTime.Now.ToString("D");

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = connectionString;
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                string sqlstr = "INSERT INTO  RecordTable VALUES" +
                    "('" +EventNum +"','" + Name +"','"+Contents +"','" + times + "','" + State +"')";
                cmd.CommandText = sqlstr;
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
}