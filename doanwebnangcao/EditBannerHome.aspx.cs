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
    public partial class EditBannerHome : System.Web.UI.Page
    {
        int queryMaBannerHome = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["MaAD"] == null)
            {
                Response.Redirect("loginAD.aspx");
            }

            queryMaBannerHome = Convert.ToInt32(Page.Request.QueryString["tbMaBannerHome"]);
            if (!Page.IsPostBack)
            {

                if (queryMaBannerHome > 0)
                {
                    BannerHome bannerHome = dao.DaoBannerHome.getOneBannerHome(queryMaBannerHome);

                    tbMaBannerHome.Enabled = false;
                    tbMaBannerHome.Text = queryMaBannerHome.ToString();
                    DropDownList1.Enabled = false;
                    DropDownList1.Text = Convert.ToString(bannerHome.MaLoaiSP);



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
                    SqlCommand cmd = new SqlCommand(" update BannerHome set  Anh1 = @anh1, MaLoaiSP = @maLoaiSP  where MaBannerHome = @maBannerHome  ", conn);
                    conn.Open();

                    cmd.Parameters.AddWithValue("@maBannerHome", tbMaBannerHome.Text);

                   
                    cmd.Parameters.AddWithValue("@anh1", FileUpload1.FileName);
                    cmd.Parameters.AddWithValue("@maLoaiSP", DropDownList1.Text);





                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("GridviewBannerHome.aspx");
                }
            }
        }

        bool validate()
        {
            bool result = false;


            if (tbMaBannerHome.Text == "" ||  FileUpload1.FileName == "" || DropDownList1.Text == "")
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