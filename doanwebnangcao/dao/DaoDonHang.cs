using doanwebnangcao.entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace doanwebnangcao.dao
{
    public class DaoDonHang
    {
        public static List<DonHangMoi> getAllDonHang()
        {
            List<DonHangMoi> lstDH = new List<DonHangMoi>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT MaDonHang, ID, DiaChi, SoDienThoai,  FullName, SoTaiKhoan, NganHang, VanChuyen, TongTien FROM DonHang";
            //Định nghĩa đối tượng Connection
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                //Khởi tạo đối tượng Command
                SqlCommand sqlCommand = new SqlCommand(strSQL, sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                //Mở kết nối tới CSDL
                sqlConnection.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                DonHangMoi objDH = null; 
                while (sqlDataReader.Read())
                {
                    objDH = new DonHangMoi();

                    objDH.MaDonHang = Convert.ToInt32(sqlDataReader["MaDonHang"]);
                    objDH.ID = Convert.ToInt32(sqlDataReader["ID"]);

                    objDH.DiaChi = Convert.ToString(sqlDataReader["DiaChi"]);
                    objDH.SoDienThoai = Convert.ToString(sqlDataReader["SoDienThoai"]);
                    objDH.SoTaiKhoan = Convert.ToString(sqlDataReader["SoTaiKhoan"]);
                    objDH.NganHang = Convert.ToString(sqlDataReader["NganHang"]);
                    objDH.VanChuyen = Convert.ToString(sqlDataReader["VanChuyen"]); 

                    objDH.FullName = Convert.ToString(sqlDataReader["FullName"]);
                    objDH.TongTien = Convert.ToString(sqlDataReader["TongTien"]);











                    lstDH.Add(objDH);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstDH;
            }
        }


        public static List<DonHangMoi> getAllDonHangByID(int _iD)
        {
            List<DonHangMoi> lstDH = new List<DonHangMoi>();
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT MaDonHang, ID, DiaChi, SoDienThoai,  FullName, SoTaiKhoan, NganHang, VanChuyen, TongTien FROM DonHang where ID = '"+_iD+"' ";
            //Định nghĩa đối tượng Connection
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                //Khởi tạo đối tượng Command
                SqlCommand sqlCommand = new SqlCommand(strSQL, sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                //Mở kết nối tới CSDL
                sqlConnection.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                DonHangMoi objDH = null;
                while (sqlDataReader.Read())
                {
                    objDH = new DonHangMoi();

                    objDH.MaDonHang = Convert.ToInt32(sqlDataReader["MaDonHang"]);
                    objDH.ID = Convert.ToInt32(sqlDataReader["ID"]);

                    objDH.DiaChi = Convert.ToString(sqlDataReader["DiaChi"]);
                    objDH.SoDienThoai = Convert.ToString(sqlDataReader["SoDienThoai"]);
                    objDH.SoTaiKhoan = Convert.ToString(sqlDataReader["SoTaiKhoan"]);
                    objDH.NganHang = Convert.ToString(sqlDataReader["NganHang"]);
                    objDH.VanChuyen = Convert.ToString(sqlDataReader["VanChuyen"]);

                    objDH.FullName = Convert.ToString(sqlDataReader["FullName"]);
                    objDH.TongTien = Convert.ToString(sqlDataReader["TongTien"]);











                    lstDH.Add(objDH);
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return lstDH;
            }
        }


        public static DonHangMoi getOneDonHang(int _maDonHang)
        {
            DonHangMoi objDH = null;
            //Lấy thông tin chuỗi kết nối từ Web.config
            string strConnection = ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;
            //Viết câu lệnh truy vấn
            string strSQL = "SELECT MaDonHang, ID, DiaChi, SoDienThoai,  FullName, SoTaiKhoan, NganHang, VanChuyen, TongTien FROM DonHang where MaDonHang = '"+_maDonHang+"'";
            //Định nghĩa đối tượng Connection
            using (SqlConnection sqlConnection = new SqlConnection(strConnection))
            {
                //Khởi tạo đối tượng Command
                SqlCommand sqlCommand = new SqlCommand(strSQL, sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.Text;
                //Mở kết nối tới CSDL
                sqlConnection.Open();
                //Sử dụng đối tượng DataReader để đọc dữ liệu
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
               
                while (sqlDataReader.Read())
                {
                    objDH = new DonHangMoi();

                    objDH.MaDonHang = Convert.ToInt32(sqlDataReader["MaDonHang"]);
                    objDH.ID = Convert.ToInt32(sqlDataReader["ID"]);

                    objDH.DiaChi = Convert.ToString(sqlDataReader["DiaChi"]);
                    objDH.SoDienThoai = Convert.ToString(sqlDataReader["SoDienThoai"]);
                    objDH.SoTaiKhoan = Convert.ToString(sqlDataReader["SoTaiKhoan"]);
                    objDH.NganHang = Convert.ToString(sqlDataReader["NganHang"]);
                    objDH.VanChuyen = Convert.ToString(sqlDataReader["VanChuyen"]);

                    objDH.FullName = Convert.ToString(sqlDataReader["FullName"]);
                    objDH.TongTien = Convert.ToString(sqlDataReader["TongTien"]);

                    
                }
                sqlDataReader.Close();//Đóng đối tượng DataReader
                sqlConnection.Close();//Đóng kết nối
                sqlConnection.Dispose();//Giải phóng bộ nhớ
                return objDH;
            }
        }

    }
}