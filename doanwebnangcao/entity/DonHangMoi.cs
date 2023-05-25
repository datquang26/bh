using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doanwebnangcao.entity
{
    public class DonHangMoi
    {
        public int MaDonHang { get; set; }
        public int ID { get; set; }
        public string DiaChi { get; set; }
        public string SoDienThoai { get; set; }

        public string SoTaiKhoan { get; set; }

        public string NganHang { get; set; }

        public string FullName { get; set; }

        public string TongTien { get; set; }

        public string VanChuyen { get; set; } 

    }
}