using doanwebnangcao.dao;
using doanwebnangcao.entity;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doanwebnangcao
{
    public partial class product : System.Web.UI.Page
    {
        int productID = 0;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            productID = Convert.ToInt32(Page.Request.QueryString["productID"]);

           

            if (!Page.IsPostBack)
            {

            }

                if (productID > 0)
                {


                    List<SanPham> lstSP = dao.DaoSanPham.getAllSanPhamByMaSanPham(productID);
                    gvSP.DataSource = lstSP;
                    gvSP.DataBind();

                    List<UserComment> lstUC = dao.DaoUserComment.getAllUserCommentByMaSanPham(productID);
                    gvUC.DataSource = lstUC;
                    gvUC.DataBind();

             
               


            }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validate())
            {
                if (Session["ID"] == null)
                {
                    Session.Clear();
                    Session.Abandon();
                    Response.Cookies.Clear();
                    Response.Redirect("login.aspx");
                }
                else
                {
                    string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(strConnection))
                    {
                        SqlCommand cmd = new SqlCommand("insert into UserComment(ID,FullName, TextComment, MaSanPham,Anh1) values( @iD, @fullName, @textComment, @maSanPham, @anh1)", conn);
                        conn.Open();

                        cmd.Parameters.AddWithValue("@maSanPham", productID);

                        cmd.Parameters.AddWithValue("@iD", Session["ID"]);

                        cmd.Parameters.AddWithValue("@fullName", Session["FullName"]);
                        cmd.Parameters.AddWithValue("@textComment", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@anh1", FileUpload1.FileName);






                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Redirect("product.aspx?productID=" + productID);
                    }
                }
               
            }
        }

        bool validate()
        {
            bool result = false;


            if (TextBox1.Text == "")
            {
                result = false;
                Label1.Text = "* Vui lòng nhập comment *";
                Label2.Text = "";
                Label3.Text = "";

            }
            else
            {
                Label1.Text = "";
                result = true;
            }
            return result;
        }

        protected void gvUC_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (Session["ID"] == null && Session["MaAD"] == null)
            {
                Response.Redirect("login.aspx");
            }

            else
            {
                int index = Convert.ToInt32(e.RowIndex);
                int MaComment = Convert.ToInt32(gvUC.DataKeys[e.RowIndex].Value);
                UserComment oneUS = dao.DaoUserComment.getOneUserCommentProduct(MaComment);

                if (oneUS.FullName == (string)Session["FullName"] || Session["TenAD"] != null)
                {


                    string strSql = "Delete from UserComment where   MaComment = " + MaComment.ToString();
                    string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

                    using (SqlConnection sqlConnection = new SqlConnection(strConnection))
                    {
                        SqlCommand cmd = new SqlCommand(strSql, sqlConnection);
                        cmd.CommandType = System.Data.CommandType.Text;
                        sqlConnection.Open();





                        cmd.ExecuteNonQuery();
                        sqlConnection.Close();
                        sqlConnection.Dispose();

                        Response.Redirect("product.aspx?productID=" + productID);
                    }

                }
                else
                {
                    Label3.Text = "* Bạn không thể xóa comment đó *";
                    Label1.Text = "";
                    Label2.Text = "";
                }
            }



          
           


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (validate2())
            {

                if (Session["ID"] == null)
                {
                    Response.Redirect("login.aspx");
                }

                else
                {
                    productID = Convert.ToInt32(Page.Request.QueryString["productID"]);
                    GioHang data = DaoGioHang.getOneGioHang((int)Session["ID"], productID);
                    if (data == null)
                    {
                        int productID1 = Convert.ToInt32(Page.Request.QueryString["productID"]);
                        string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                        using (SqlConnection conn = new SqlConnection(strConnection))
                        {
                            SqlCommand cmd = new SqlCommand("insert into GioHang(MaSanPham,ID, SoLuong) values(@maSanPham,@iD,@soLuong)", conn);
                            conn.Open();

                            cmd.Parameters.AddWithValue("@maSanPham", productID1);
                            cmd.Parameters.AddWithValue("@iD", Session["ID"]);
                            cmd.Parameters.AddWithValue("@soLuong", TextBox2.Text);

                            cmd.ExecuteNonQuery();
                            conn.Close();
                            Response.Redirect("cart.aspx");
                        }
                    }
                    else
                    {
                        int productID1 = Convert.ToInt32(Page.Request.QueryString["productID"]);
                        string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
                        using (SqlConnection conn = new SqlConnection(strConnection))
                        {
                            SqlCommand cmd = new SqlCommand("update GioHang set SoLuong = SoLuong + @soLuong where  MaSanPham = @maSanPham and ID =@iD   ", conn);
                            conn.Open();


                            cmd.Parameters.AddWithValue("@maSanPham", productID1);
                            cmd.Parameters.AddWithValue("@iD", Session["ID"]);

                            cmd.Parameters.AddWithValue("@soLuong", TextBox2.Text);

                            cmd.ExecuteNonQuery();
                            conn.Close();
                            Response.Redirect("cart.aspx");
                        }
                    }




                }





            }
        }
        bool validate2()
        {
            bool result = false;

            if (TextBox2.Text == "" )
            {
                result = false;
              
                Label2.Text = "* Vui lòng nhập số lượng *";
                Label1.Text = "";
                Label3.Text = "";
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