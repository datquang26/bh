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
    public partial class EditDonHangUser : System.Web.UI.Page
    {
        int queryMaDonHang = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("login.aspx");
            }

            queryMaDonHang = Convert.ToInt32(Page.Request.QueryString["Label1"]);
            if (!Page.IsPostBack)
            {

                if (queryMaDonHang > 0)
                {
                    DonHangMoi donHang = dao.DaoDonHang.getOneDonHang(queryMaDonHang); 

                  
                    Label1.Text = queryMaDonHang.ToString();
                   
                    Label3.Text = donHang.DiaChi; 
                   
                    Label4.Text = donHang.SoDienThoai;
                   
                    Label5.Text = donHang.SoTaiKhoan;
                   
                    Label6.Text = donHang.NganHang; 
                  
                    Label7.Text = donHang.TongTien;
                   
                   


                }

            }


          

           
        }

       

        protected void Button3_Click(object sender, EventArgs e)
        {
            
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand("update DonHang set ID = @iD, DiaChi = @diaChi, SoDienThoai = @soDienThoai, FullName = @fullName, TongTien = @tongTien, SoTaiKhoan = @soTaiKhoan, NganHang = @nganHang, VanChuyen = @vanChuyen where MaDonHang = @maDonHang ", conn);
                    conn.Open();

                    cmd.Parameters.AddWithValue("@maDonHang", Label1.Text);
                    cmd.Parameters.AddWithValue("@iD", Session["ID"]);
                    cmd.Parameters.AddWithValue("@diaChi", Label3.Text);
                    cmd.Parameters.AddWithValue("@soDienThoai",Label4.Text);
                    cmd.Parameters.AddWithValue("@soTaiKhoan", Label5.Text);
                    cmd.Parameters.AddWithValue("@nganHang", Label6.Text);
                    cmd.Parameters.AddWithValue("@vanChuyen", "Đã Hủy");



                    cmd.Parameters.AddWithValue("@fullName", Session["FullName"]);
                    cmd.Parameters.AddWithValue("@tongTien", Label7.Text);


                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("GridviewDonHangUser.aspx");
                }
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (validate())
            {
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand("update DonHang set ID = @iD, DiaChi = @diaChi, SoDienThoai = @soDienThoai, FullName = @fullName, TongTien = @tongTien, SoTaiKhoan = @soTaiKhoan, NganHang = @nganHang, VanChuyen = @vanChuyen where MaDonHang = @maDonHang ", conn);
                    conn.Open();

                    cmd.Parameters.AddWithValue("@maDonHang", Label1.Text);
                    cmd.Parameters.AddWithValue("@iD", Session["ID"]);
                    cmd.Parameters.AddWithValue("@diaChi", tbDiaChi.Text);
                    cmd.Parameters.AddWithValue("@soDienThoai", tbSoDienThoai.Text);
                    cmd.Parameters.AddWithValue("@soTaiKhoan", Label5.Text);
                    cmd.Parameters.AddWithValue("@nganHang", Label6.Text);
                    cmd.Parameters.AddWithValue("@vanChuyen", "Đang Giao");



                    cmd.Parameters.AddWithValue("@fullName", Session["FullName"]);
                    cmd.Parameters.AddWithValue("@tongTien", Label7.Text);


                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("EditDonHangUser.aspx?Label1=" + queryMaDonHang );
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand("update DonHang set ID = @iD, DiaChi = @diaChi, SoDienThoai = @soDienThoai, FullName = @fullName, TongTien = @tongTien, SoTaiKhoan = @soTaiKhoan, NganHang = @nganHang, VanChuyen = @vanChuyen where MaDonHang = @maDonHang ", conn);
                    conn.Open();

                    cmd.Parameters.AddWithValue("@maDonHang", Label1.Text);
                    cmd.Parameters.AddWithValue("@iD", Session["ID"]);
                    cmd.Parameters.AddWithValue("@diaChi", Label3.Text);
                    cmd.Parameters.AddWithValue("@soDienThoai", Label4.Text);
                    cmd.Parameters.AddWithValue("@soTaiKhoan", Label5.Text);
                    cmd.Parameters.AddWithValue("@nganHang", Label6.Text);
                    cmd.Parameters.AddWithValue("@vanChuyen", "Đã Giao");



                    cmd.Parameters.AddWithValue("@fullName", Session["FullName"]);
                    cmd.Parameters.AddWithValue("@tongTien", Label7.Text);


                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("GridviewDonHangUser.aspx");
                }
            
        }


        bool validate()
        {
            bool result = false;


            if (Label1.Text == "" || tbDiaChi.Text == "" || tbSoDienThoai.Text == "" || Label5.Text == "" || Label6.Text == "" || Label7.Text == "" )
            {
                result = false;
                Label2.Text = "* Vui lòng nhập thêm thông tin *";

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