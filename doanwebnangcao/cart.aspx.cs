using doanwebnangcao.entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doanwebnangcao
{
    public partial class cart : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Session.Clear();
                Session.Abandon();
                Response.Cookies.Clear();
                Response.Redirect("login.aspx");
            }


            List<GioHang> lstGH = dao.DaoGioHang.getAllGioHangBySessionId((int)Session["ID"]);
                gvGH.DataSource = lstGH;
                gvGH.DataBind();

            if (!Page.IsPostBack)
            {


                GioHang tongTien = dao.DaoGioHang.TongTien((int)Session["ID"]);
                if (tongTien != null)
                {
                    BindTongTien();
                }


            }

        }

       

        protected void gvGH_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int MaGioHang = Convert.ToInt32(gvGH.DataKeys[e.RowIndex].Value);

            string strSql = "Delete from GioHang where MaGioHang = " + MaGioHang.ToString();
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                SqlCommand cmd = new SqlCommand(strSql, sqlConnection);
                cmd.CommandType = System.Data.CommandType.Text;
                sqlConnection.Open();
                cmd.ExecuteNonQuery();
                sqlConnection.Close();
                sqlConnection.Dispose();
            }
            Response.Redirect("cart.aspx");
        }


        protected void BindTongTien()
        {
            GioHang tongTien = dao.DaoGioHang.TongTien((int)Session["ID"]);
            //Label1.Text = tongTien.TongTien;
            int money = tongTien.TongTien;
            Label1.Text = money.ToString("#,#");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DonHang.aspx");
        }

      
    }
}