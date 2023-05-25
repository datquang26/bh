using doanwebnangcao.entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doanwebnangcao
{
    public partial class GridviewDonHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["MaAD"] == null)
            {
                Response.Redirect("loginAD.aspx");
            }

            if (!Page.IsPostBack)
            {
                List<DonHangMoi> lstDH = dao.DaoDonHang.getAllDonHang();
                gvDH.DataSource = lstDH;
                gvDH.DataBind();

            }
        }

        protected void gvDH_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDH.PageIndex = e.NewPageIndex;
            List<DonHangMoi> lstDH = dao.DaoDonHang.getAllDonHang();
            gvDH.DataSource = lstDH;
            gvDH.DataBind();
        }

        protected void gvDH_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int MaDonHang = Convert.ToInt32(gvDH.DataKeys[e.RowIndex].Value);

            string strSql = "Delete from DonHang where MaDonHang = " + MaDonHang.ToString();
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
            Response.Redirect("GridviewDonHang.aspx");
        }
    }
}