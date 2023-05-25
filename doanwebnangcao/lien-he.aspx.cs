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
    public partial class lien_he : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validate())
            {
                string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(strConnection))
                {
                    SqlCommand cmd = new SqlCommand("insert into LienHe( FullName, Email, SoDienThoai , NoiDung) values(@fullName,@email,@soDienThoai,@noiDung) ", conn);
                    conn.Open();
                  
                    cmd.Parameters.AddWithValue("@fullName", tbFullName.Text);

                    cmd.Parameters.AddWithValue("@email", tbEmail.Text);

                    cmd.Parameters.AddWithValue("@soDienThoai", tbSoDienThoai.Text);
                    cmd.Parameters.AddWithValue("@noiDung", tbNoiDung.Text);

                    




                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("lien-he.aspx");
                }
            }
        }
        bool validate()
        {
            bool result = false;

            if (tbNoiDung.Text == "" && tbEmail.Text == "" && tbFullName.Text == "" && tbSoDienThoai.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên  ! *";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "* Vui lòng nhập số điện thoại ! *";
                Label4.Text = "* Vui lòng nhập nội dung ! *";
            }

            else if (tbFullName.Text == "" && tbEmail.Text == "" && tbSoDienThoai.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên ! *";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "* Vui lòng nhập số điện thoại ! *";
                Label4.Text = "";


            }

            else if (tbFullName.Text == "" && tbEmail.Text == "" && tbNoiDung.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên ! *";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "";
                Label4.Text = "* Vui lòng nhập nội dung ! *";


            }

            else if (tbFullName.Text == "" && tbSoDienThoai.Text == "" && tbNoiDung.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên ! *";
                Label2.Text = "";
                Label3.Text = "* Vui lòng nhập số điện thoại ! *";
                Label4.Text = "* Vui lòng nhập nội dung ! *";


            }

            else if (tbEmail.Text == "" && tbSoDienThoai.Text == "" && tbNoiDung.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "* Vui lòng nhập số điện thoại ! *";
                Label4.Text = "* Vui lòng nhập nội dung ! *";


            }


            else if (tbFullName.Text == "" && tbEmail.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên ! *";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "";
                Label4.Text = "";


            }

            else if (tbSoDienThoai.Text == "" && tbFullName.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên  ! *";
                Label2.Text = "";
                Label3.Text = "* Vui lòng nhập số điện thoại ! *";
                Label4.Text = "";
            }

            else if (tbNoiDung.Text == "" && tbFullName.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập tên  ! *";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "* Vui lòng nhập nội dung ! *";
            }

            else if (tbSoDienThoai.Text == "" && tbEmail.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "* Vui lòng nhập số điện thoại ! *";
                Label4.Text = "";

            }

            else if (tbNoiDung.Text == "" && tbEmail.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "";
                Label4.Text = "* Vui lòng nhập nội dung ! *";

            }

            else if (tbNoiDung.Text == "" && tbSoDienThoai.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "* Vui lòng nhập số điện thoại ! *";
                Label4.Text = "* Vui lòng nhập nội dung ! *";

            }

            else if (tbEmail.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "* Vui lòng nhập Email ! *";
                Label3.Text = "";
                Label4.Text = "";

            }
            else if (tbSoDienThoai.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "* Vui lòng nhập số điện thoại ! *";
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

            else if (tbNoiDung.Text == "")
            {
                result = false;
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "* Vui lòng nhập nội dung ! *";
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