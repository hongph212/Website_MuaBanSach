using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebSiteBanSach.Models;

namespace WebSiteBanSach.Models
{
    public class GioHang
    {
        QL_SACHEntities1 db = new QL_SACHEntities1();
        public int iMaSach { set; get; }
        public string sTenSach { set; get; }
        public string sAnhBia { set; get; }
        public double dDonGia { set; get; }
        public int iSoLuong { set; get; }
        public double dThanhTien
        {
            get { return iSoLuong * dDonGia; }
        }
        public GioHang(int MaSach)
        {
            iMaSach = MaSach;
            SACH sach = db.SACHes.Single(s => s.MASACH == iMaSach);
            sTenSach = sach.TENSACH;
            sAnhBia = sach.HINH;
            dDonGia = double.Parse(sach.THANHTIEN.ToString());
            iSoLuong = 1;
        }
    }
}