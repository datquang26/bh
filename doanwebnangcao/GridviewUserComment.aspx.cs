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
    public partial class GridviewUserComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["MaAD"] == null)
            {
                Response.Redirect("loginAD.aspx");
            }

            if (!Page.IsPostBack)
            {
                List<UserComment> lstUC = dao.DaoUserComment.getAllUserComment();
                gvUC.DataSource = lstUC;
                gvUC.DataBind();

            }
        }

        protected void gvUC_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUC.PageIndex = e.NewPageIndex;
            List<UserComment> lstUC = dao.DaoUserComment.getAllUserComment();
            gvUC.DataSource = lstUC;
            gvUC.DataBind();
        }

        protected void gvUC_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            int MaComment = Convert.ToInt32(gvUC.DataKeys[e.RowIndex].Value);

            string strSql = "Delete from UserComment where MaComment  = " + MaComment.ToString();
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
            Response.Redirect("GridviewUserComment.aspx");
        }

        protected void gvUC_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int _maComment = Convert.ToInt32(gvUC.DataKeys[e.NewEditIndex].Value);
            UserComment userComment = dao.DaoUserComment.getOneUserComment(_maComment);
            string strMaComment = userComment.MaComment.ToString();
            Response.Redirect("EditUserComment.aspx?tbMaComment=" + strMaComment);
        }
    }
}