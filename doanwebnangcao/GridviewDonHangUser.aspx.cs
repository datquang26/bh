using doanwebnangcao.entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doanwebnangcao
{
    public partial class GridviewDonHangUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("login.aspx");
            }

            if (!Page.IsPostBack)
            {
                List<DonHangMoi> lstDH = dao.DaoDonHang.getAllDonHangByID((int)Session["ID"]);
                gvDH.DataSource = lstDH;
                gvDH.DataBind();

            }
        }

        protected void gvDH_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int _maDonHang = Convert.ToInt32(gvDH.DataKeys[e.NewEditIndex].Value);
            DonHangMoi donHang = dao.DaoDonHang.getOneDonHang(_maDonHang);
            string strMadh = donHang.MaDonHang.ToString(); 
            Response.Redirect("EditDonHangUser.aspx?Label1=" + strMadh);
        }

        protected void gvDH_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDH.PageIndex = e.NewPageIndex;
            List<DonHangMoi> lstDH = dao.DaoDonHang.getAllDonHangByID((int)Session["ID"]);
            gvDH.DataSource = lstDH;
            gvDH.DataBind();
        }
    }
}