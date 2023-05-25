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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Cookies.Clear();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validate())
            {
                if(tbMatKhau.Text == tbReMatKhau.Text)
                {
                    string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(strConnection))
                    {
                        SqlCommand cmd = new SqlCommand("insert into NguoiDung(FullName, Email, MatKhau) values (@fullName,@email, @matKhau)", conn);
                        conn.Open();

                        cmd.Parameters.AddWithValue("@email", tbEmail.Text);
                        cmd.Parameters.AddWithValue("@matKhau", tbMatKhau.Text);
                        cmd.Parameters.AddWithValue("@fullName", tbFullName.Text);


                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Redirect("login.aspx");
                    }
                }
                else
                {
                    Label4.Text = "* Nhập lại mật khẩu cho đúng ! *";
                }

               
            }
        }

        bool validate()
        {
            bool result = false;

            if (tbMatKhau.Text == "" && tbEmail.Text == "" && tbFullName.Text == "" && tbReMatKhau.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên  ! *";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "* Vui lòng nhập mật khẩu ! *";
                Label4.Text = "* Vui lòng nhập lại mật khẩu ! *";
            }

            else if (tbFullName.Text == "" && tbEmail.Text == "" && tbMatKhau.Text == ""  )
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên ! *";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "* Vui lòng nhập mật khẩu ! *";
                Label4.Text = "";


            }

            else if (tbFullName.Text == "" && tbEmail.Text == "" && tbReMatKhau.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên ! *";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "";
                Label4.Text = "* Vui lòng nhập lại mật khẩu ! *";


            }

            else if (tbFullName.Text == "" && tbMatKhau.Text == "" && tbReMatKhau.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên ! *";
                Label2.Text = "";
                Label3.Text = "* Vui lòng nhập mật khẩu ! *";
                Label4.Text = "* Vui lòng nhập lại mật khẩu ! *";


            }

            else if (tbEmail.Text == "" && tbMatKhau.Text == "" && tbReMatKhau.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "* Vui lòng nhập mật khẩu ! *";
                Label4.Text = "* Vui lòng nhập lại mật khẩu ! *";


            }


            else if ( tbFullName.Text == "" && tbEmail.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên ! *";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "";
                Label4.Text = "";


            }

            else if (tbMatKhau.Text == "" && tbFullName.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên  ! *";
                Label2.Text = "";
                Label3.Text = "* Vui lòng nhập mật khẩu ! *";
                Label4.Text = "";
            }

            else if (tbReMatKhau.Text == "" && tbFullName.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên  ! *";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "* Vui lòng nhập lại mật khẩu ! *";
            }

            else if (tbMatKhau.Text == "" && tbEmail.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "* Vui lòng nhập mật khẩu ! *";
                Label4.Text = "";

            }

            else if (tbReMatKhau.Text == "" && tbEmail.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "";
                Label4.Text = "* Vui lòng nhập lại mật khẩu ! *";

            }

            else if (tbReMatKhau.Text == "" && tbMatKhau.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "* Vui lòng nhập mật khẩu ! *";
                Label4.Text = "* Vui lòng nhập lại mật khẩu ! *";

            }

            else if (tbEmail.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "";
                Label4.Text = "";

            }
            else if (tbMatKhau.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "* Vui lòng nhập mật khẩu ! *";
                Label4.Text = "";
            }
            else if (tbFullName.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên  ! *";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
            }

            else if (tbReMatKhau.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "* Vui lòng nhập lại mật khẩu ! *";
            }

            else
            {
                Label1.Text = Label2.Text = Label3.Text = Label4.Text = "";
                result = true;
            }
            return result;
        }
    }
}