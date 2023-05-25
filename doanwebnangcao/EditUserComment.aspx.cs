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
    public partial class EditUserComment : System.Web.UI.Page
    {
        int queryMaComment = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["MaAD"] == null)
            {
                Response.Redirect("loginAD.aspx");
            }

            queryMaComment = Convert.ToInt32(Page.Request.QueryString["tbMaComment"]);
            if (!Page.IsPostBack)
            {

                if (queryMaComment > 0)
                {
                    UserComment userComment = dao.DaoUserComment.getOneUserComment(queryMaComment);

                    tbMaComment.Enabled = false;
                    tbMaComment.Text = queryMaComment.ToString();
                    tbID.Enabled = false;
                    tbID.Text = Convert.ToString(userComment.ID);
                    tbFullName.Enabled = false;
                    tbFullName.Text = userComment.FullName;
                    tbTextComment.Text = userComment.TextComment;
                    tbMaSanPham.Enabled = false;
                    tbMaSanPham.Text = Convert.ToString(userComment.MaSanPham);


                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validate())
            {
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand(" update UserComment  set ID = @iD, FullName = @fullName, TextComment = @textComment , MaSanPham = @maSanPham, Anh1 = @anh1 where MaComment = @maComment  ", conn);
                    conn.Open();

                    cmd.Parameters.AddWithValue("@maComment", tbMaComment.Text);

                    cmd.Parameters.AddWithValue("@iD", tbID.Text);
                    cmd.Parameters.AddWithValue("@fullName", tbFullName.Text);
                    cmd.Parameters.AddWithValue("@textComment", tbTextComment.Text);

                    cmd.Parameters.AddWithValue("@maSanPham", tbMaSanPham.Text);
                    cmd.Parameters.AddWithValue("@anh1", FileUpload1.FileName);




                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("GridviewUserComment.aspx");
                }
            }
        }

        bool validate()
        {
            bool result = false;


            if (tbMaComment.Text == "" || tbID.Text == "" || tbFullName.Text == "" || tbTextComment.Text == "" || tbMaSanPham.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập thêm thông tin sản phẩm *";

            }
            else
            {
                Label1.Text = "";
                result = true;
            }
            return result;
        }

    }
}