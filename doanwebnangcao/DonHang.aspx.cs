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
    public partial class DonHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
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

        protected void BindTongTien()
        {
            GioHang tongTien = dao.DaoGioHang.TongTien((int)Session["ID"]);
            //Label1.Text = tongTien.TongTien;
            int money = tongTien.TongTien;
            Label1.Text = money.ToString("#,#");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validate())
            {
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand("insert into DonHang  (ID, DiaChi, SoDienThoai, FullName, TongTien, SoTaiKhoan, NganHang, VanChuyen ) values(@iD,@diaChi,@soDienThoai, @fullName, @tongTien, @soTaiKhoan, @nganHang, @vanChuyen)", conn);
                    conn.Open();

                    cmd.Parameters.AddWithValue("@iD", Session["ID"]);
                    cmd.Parameters.AddWithValue("@diaChi", tbDiaChi.Text);
                    cmd.Parameters.AddWithValue("@soDienThoai", tbSoDienThoai.Text);
                    cmd.Parameters.AddWithValue("@soTaiKhoan", tbSoTaiKhoan.Text);
                    cmd.Parameters.AddWithValue("@nganHang", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@vanChuyen", "Dang Giao" );



                    cmd.Parameters.AddWithValue("@fullName", Session["FullName"]);
                    cmd.Parameters.AddWithValue("@tongTien", Label1.Text );




                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>alert('Thanh toan thanh cong'); </script>");
                }
            }
        }

        bool validate()
        {
            bool result = false;


            if (tbDiaChi.Text == "" || tbSoDienThoai.Text == "" || tbSoTaiKhoan.Text == "" || DropDownList1.Text == "")
            {
                result = false;
                Label2.Text = "* Vui lòng nhập thêm thông tin khách hàng *";

            }
            else
            {
                Label2.Text = "";
                result = true;
            }
            return result;
        }


    }
}