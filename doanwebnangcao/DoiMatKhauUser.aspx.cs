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
    public partial class DoiMatKhauUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validate())
            {
                NguoiDung data = dao.DaoNguoiDung.getOneNguoiDung((int)Session["ID"]);
                if(data.MatKhau == tbMatKhauCu.Text)
                {
                    string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(strConnection))
                    {
                        SqlCommand cmd = new SqlCommand(" update NguoiDung set   MatKhau = @matKhau  where ID = @iD  ", conn);
                        conn.Open();


                        cmd.Parameters.AddWithValue("@matKhau", tbMatKhau.Text);
                        cmd.Parameters.AddWithValue("@iD", Session["ID"]);









                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Write("<script> alert('Đổi mật khẩu thành công!!!')</script>");
                        Response.Redirect("login.aspx");
                    }
                }
                else
                {
                    Label1.Text = "* Mật khẩu cũ không đúng ! *";
                }
                
            }
        }


        bool validate()
        {
            bool result = false;


            if ( tbMatKhauCu.Text == "" && tbMatKhau.Text == "" )
            {
                result = false;
                Label2.Text = "* Vui lòng nhập mật khẩu cũ ! *";
                Label3.Text = "* Vui lòng nhập mật khẩu mới ! *";
                Label1.Text = "";
            }

            else if (tbMatKhauCu.Text == "")
            {
                result = false;
                Label2.Text = "* Vui lòng nhập mật khẩu cũ ! *";
                Label3.Text = "";
                Label1.Text = "";
            }

            else if (tbMatKhau.Text == "")
            {
                result = false;
                Label2.Text = "";
                Label3.Text = "* Vui lòng nhập mật khẩu mới ! *";
                Label1.Text = "";
            }

            else
            {
                Label2.Text = Label3.Text = "";
                result = true;
            }
            return result;
        }

    }
}