using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MaoWeb
{
    public partial class  _Default : Page
    {
        string strCon = "Data Source=192.168.11.16;Initial Catalog=FamilyDB;Persist Security Info=True;User ID=maomao;Password=maomao";
        SqlConnection sqlcon;
        SqlCommand sqlcom;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bind();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string sqlstr = "delete from RecordTable where EventNum='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            sqlcon = new SqlConnection(strCon);
            sqlcom = new SqlCommand(sqlstr, sqlcon);
            sqlcon.Open();
            sqlcom.ExecuteNonQuery();
            sqlcon.Close();
            GridView1.DataBind();
            bind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            sqlcon = new SqlConnection(strCon);
            string sqlstr = "update RecordTable set State='"
             + ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim() + "' where EventNum='"
             + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'";
            sqlcom = new SqlCommand(sqlstr, sqlcon);
            sqlcon.Open();
            sqlcom.ExecuteNonQuery();
            sqlcon.Close();
            GridView1.EditIndex = -1;
            bind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind();
        }
        public void bind()
        {

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = strCon;
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            string sqlstr = "SELECT * FROM RecordTable ORDER BY EventNum DESC";
            cmd.CommandText = sqlstr;
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable datatable = new DataTable();
            datatable.Load(reader);
            GridView1.DataKeyNames = new string[] { "EventNum" };
            GridView1.DataSource = datatable.DefaultView;
            GridView1.DataBind();
            conn.Close();
        }
    }

}