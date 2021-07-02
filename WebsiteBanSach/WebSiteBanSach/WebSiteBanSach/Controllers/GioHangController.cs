using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;
namespace WebSiteBanSach.Controllers
{
    public class GioHangController : Controller
    {
        //
        // GET: /GioHang/

        public ActionResult Index()
        {
            return View();
        }
        QL_SACHEntities1 db = new QL_SACHEntities1();
        public List<GioHang> LayGioHang()
        {
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang == null)
            {
                lstGioHang = new List<GioHang>();
                Session["GioHang"] = lstGioHang;
            }
            return lstGioHang;
        }
        public ActionResult ThemGioHang(int ms, string strURL)
        {
            List<GioHang> lstGioHang = LayGioHang();
            GioHang SanPham = lstGioHang.Find(sp => sp.iMaSach == ms);
            if (SanPham == null)
            {
                SanPham = new GioHang(ms);
                lstGioHang.Add(SanPham);
                return Redirect(strURL);
            }
            else
            {
                SanPham.iSoLuong++;
                return Redirect(strURL);
            }
        }
        private int tongSoLuong()
        {
            int sl = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                sl += lstGioHang.Sum(sp => sp.iSoLuong);
            }
            return sl;
        }
        private double tongThanhTien()
        {
            double ttt = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                ttt += lstGioHang.Sum(sp => sp.dThanhTien);
            }
            return ttt;
        }
        public ActionResult GioHang()
        {
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("SachPartial", "Sach");
            }
            List<GioHang> lstGioHang = LayGioHang();
            ViewBag.tongSoLuong = tongSoLuong();
            ViewBag.TongThanhTien = tongThanhTien();
            return View(lstGioHang);

        }
        public ActionResult GioHangPartial()
        {
            ViewBag.tongSoLuong = tongSoLuong();
            ViewBag.TongThanhTien = tongThanhTien();
            return PartialView();
        }
        public ActionResult XoaGioHang(int MASP)
        {
            List<GioHang> lstGioHang = LayGioHang();
            GioHang sp = lstGioHang.Single(s => s.iMaSach == MASP);
            if (sp != null)
            {
                lstGioHang.RemoveAll(s => s.iMaSach == MASP);
                return RedirectToAction("GioHang", "GioHang");
            }
            else
            {
                return RedirectToAction("SachPartial", "Sach");

            }
            return RedirectToAction("GioHang", "GioHang");
        }
        public ActionResult XoaGioHang_All()
        {
            List<GioHang> lstGioHang = LayGioHang();
            lstGioHang.Clear();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult CapNhatGioHang(int MASP, FormCollection f)
        {
            List<GioHang> lstGioHang = LayGioHang();
            GioHang sp = lstGioHang.Single(s => s.iMaSach == MASP);
            if (sp != null)
            {
                sp.iSoLuong = int.Parse(f["txtSoLuong"].ToString());
            }
            return RedirectToAction("GioHang", "GioHang");
        }

        public ActionResult DatHang()
        {
            if (Session["taikhoan"] == null || Session["taikhoan"].ToString() == "")
            {
                return RedirectToAction("DangNhap", "NguoiDung");
            }
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("SachPartial", "Sach");
            }
            List<GioHang> lstGioHang = LayGioHang();
            ViewBag.TongSoLuong = tongSoLuong();
            ViewBag.TongThanhTien = tongThanhTien();
            return View(lstGioHang);
        }
        
        [HttpPost]
        public ActionResult DatHang(FormCollection f)
        {
            HOADON ddh = new HOADON();
            NGUOIDUNG kh = (NGUOIDUNG)Session["taikhoan"];
            List<GioHang> gh = LayGioHang();
            ddh.MAND = kh.MAND;
            ddh.NGAYDAT = DateTime.Now;
            ddh.NGAYGIAO = DateTime.Parse(String.Format("{0:dd/mm/yyyy}", f["Ngaygiao"]).ToString());
            ddh.TINHTRANG = 0;
            ddh.DIACHIGIAO = f["diachi"];
            db.HOADONs.Add(ddh);
            db.SaveChanges();
            foreach (var item in gh)
            {
                CHITIETHD ctdh = new CHITIETHD();
                ctdh.SOHD = ddh.SOHD;
                ctdh.MASACH = item.iMaSach;
                ctdh.SL = item.iSoLuong;
                ctdh.GIA = float.Parse(item.dDonGia.ToString());
                ctdh.THANHTIEN = float.Parse(item.dDonGia.ToString()) * int.Parse(item.iSoLuong.ToString()); ;
                db.CHITIETHDs.Add(ctdh);
            }
            db.SaveChanges();
            Session["GioHang"] = null;
            return RedirectToAction("XacNhanDonHang", "GioHang");
        }

        public ActionResult XacNhanDonHang()
        {
            return View();
        }
    }
}
