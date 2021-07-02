using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;

namespace WebSiteBanSach.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/
        QL_SACHEntities1 db = new QL_SACHEntities1();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Sach()
        {
            var lst = db.SACHes.ToList();
            return View(lst);
        }

        public ActionResult ThemSach()
        {
            return View();
        }
        public ActionResult NguoiDung()
        {
            var lst = db.NGUOIDUNGs.ToList();
            return View(lst);
        }

        public ActionResult ThemNguoiDung()
        {
            return View();
        }

        public ActionResult TacGia(int tg)
        {
            var lst = db.TACGIAs.ToList();
            var tacgia = db.TACGIAs.Where(x => x.MATG == tg).ToList();
            if (tacgia.Count != 0)
            {
                ViewBag.TG = tacgia.ElementAt(0).TENTG;
            }
            else
            {
                ViewBag.TG = "Tác Giả";
            }
            return View(lst);
        }
        public ActionResult ThemTacGia()
        {
            return View();
        }
        public ActionResult TheLoai(int tl)
        {
            ViewBag.TG = "Thể Loại";
            var lst = db.THELOAIs.ToList();
            try
            {
                var theloai = db.THELOAIs.Where(x => x.MATHELOAI == tl).ToList();
                if (theloai.Count != 0)
                {
                    ViewBag.TG = theloai.ElementAt(0).TENTHELOAI;
                }
                return View(lst);
            }
            catch
            {
                return View(lst);
            }
        }

        public ActionResult NXB(int nxb)
        {
            ViewBag.TG = "Nhà Xuất Bản";
            var lst = db.NHAXUATBANs.ToList();
            try
            {
                NHAXUATBAN nhaxb = db.NHAXUATBANs.Single(x => x.MANXB == nxb);
                if (nhaxb != null)
                {
                    ViewBag.TG = nhaxb.TENNXB;
                }
                return View(lst);
            }
            catch
            {
                return View(lst);
            }
        }

        public ActionResult Quyen(int q)
        {
            ViewBag.TG = "Quyền";
            var lst = db.CHUCVUs.ToList();
            try
            {
                CHUCVU quyen = db.CHUCVUs.Single(x => x.QUYEN == q);
                if (quyen != null)
                {
                    ViewBag.TG = quyen.TENCHUCVU;
                }
                return View(lst);
            }
            catch
            {
                return View(lst);
            }

        }

        public ActionResult XoaSach(int MASP)
        {
            SACH sach = db.SACHes.Single(x => x.MASACH == MASP);
            db.SACHes.Remove(sach);
            db.SaveChanges();
            return RedirectToAction("Sach", "Admin");
        }
        [HttpPost]
        public ActionResult CapNhatSach(int MASP, FormCollection f)
        {
            SACH sach = db.SACHes.Single(x => x.MASACH == MASP);
            var tacgia = f["tacgia"];
            var theloai = f["theloai"];
            var nxb = f["nxb"];
            var lstTG = db.TACGIAs.Where(x => x.TENTG == tacgia).ToList();
            var lstTL = db.THELOAIs.Where(x => x.TENTHELOAI == theloai).ToList();
            var lstNXB = db.NHAXUATBANs.Where(x => x.TENNXB == nxb).ToList();
            var hinh = f["file"];
            sach.TENSACH = f["txtTenSach"];
            sach.SOLUONG = int.Parse(f["txtSoLuong"]);
            sach.GIABAN = double.Parse(f["txtGiaBan"]);
            sach.GIAMGIA = double.Parse(f["txtGiamGia"]);
            sach.MOTA = f["txtMoTa"];
            sach.MATACGIA = lstTG.ElementAt(0).MATG;
            sach.MATHELOAI = lstTL.ElementAt(0).MATHELOAI;
            sach.MANXB = lstNXB.ElementAt(0).MANXB;
            sach.HINH = hinh;
            db.SaveChanges();
            return RedirectToAction("Sach", "Admin");
        }

        public ActionResult XoaNguoiDung(int MAND)
        {
            NGUOIDUNG sach = db.NGUOIDUNGs.Single(x => x.MAND == MAND);
            db.NGUOIDUNGs.Remove(sach);
            db.SaveChanges();
            return RedirectToAction("NguoiDung", "Admin");
        }

        [HttpPost]
        public ActionResult CapNhatND(int MAND, FormCollection f)
        {
            NGUOIDUNG sach = db.NGUOIDUNGs.Single(x => x.MAND == MAND);
            var quyen = f["quyen"];
            var lstCV = db.CHUCVUs.Where(x => x.TENCHUCVU == quyen).ToList();
            sach.TENND = f["txtTen"];
            sach.NGAYSINH = DateTime.Parse(String.Format("{0:MM/DD/YYYY}", f["txtNgaySinh"]));
            sach.SDT = f["txtSDT"];
            sach.DIACHI = f["txtDC"];
            sach.EMAIL = f["txtEmail"];
            sach.PASS = f["txtPass"];
            sach.QUYEN = lstCV.ElementAt(0).QUYEN;
            db.SaveChanges();
            return RedirectToAction("NguoiDung", "Admin");
        }

        [HttpPost]
        public ActionResult ThemNguoiDung(NGUOIDUNG kh, FormCollection f)
        {
            var quyen = f["quyen"];
            var lstCV = db.CHUCVUs.Where(x => x.TENCHUCVU == quyen).ToList();
            var tendn = f["tendn"];
            var hoten = f["hoten"];
            var matkhau = f["matkhau"];
            var gioitinh = f["gioitinh"];
            var dienthoai = f["dienthoai"];
            var ngaysinh = string.Format("{0:MM/DD/YYYY}", f["ngaysinh"]);
            var email = f["email"];
            var diachi = f["diachi"];
            if (!string.IsNullOrEmpty(tendn) && !string.IsNullOrEmpty(hoten) && !string.IsNullOrEmpty(matkhau) && !string.IsNullOrEmpty(dienthoai))
            {
                kh.TENND = hoten;
                kh.USERNAME = tendn;
                kh.PASS = matkhau;
                kh.NGAYSINH = DateTime.Parse(ngaysinh);
                kh.SDT = dienthoai;
                kh.EMAIL = email;
                kh.GIOITINH = gioitinh;
                kh.DIACHI = diachi;
                kh.QUYEN = lstCV.ElementAt(0).QUYEN;
                db.NGUOIDUNGs.Add(kh);
                db.SaveChanges();
                return RedirectToAction("NguoiDung", "Admin");
            }
            else
            {
                return View();
            }
        }
        [HttpPost]
        public ActionResult ThemSach(SACH sach, FormCollection f)
        {
            int tt = 0;
            var tacgia = f["tacgia"];
            var theloai = f["theloai"];
            var nxb = f["nxb"];
            var lstTG = db.TACGIAs.Where(x => x.TENTG == tacgia).ToList();
            var lstTL = db.THELOAIs.Where(x => x.TENTHELOAI == theloai).ToList();
            var lstNXB = db.NHAXUATBANs.Where(x => x.TENNXB == nxb).ToList();
            var ten = f["tensach"];
            var gia = f["giaban"];
            var giamgia = f["giamgia"];
            var tinhtrang = f["tinhtrang"];
            var mota = f["mota"];
            if (!string.IsNullOrEmpty(tinhtrang))
            {
                tt = 1;
            }
            if (lstNXB.Count != 0 && lstTG.Count != 0 && lstTL.Count != 0)
            {
                sach.TENSACH = ten;
                sach.SOLUONG = 20;
                sach.GIABAN = double.Parse(gia);
                sach.GIAMGIA = double.Parse(giamgia);
                sach.MOTA = mota;
                sach.MOI = tt;
                sach.TINHTRANG = "Còn";
                sach.MATACGIA = lstTG.ElementAt(0).MATG;
                sach.MATHELOAI = lstTL.ElementAt(0).MATHELOAI;
                sach.MANXB = lstNXB.ElementAt(0).MANXB;
                db.SACHes.Add(sach);
                db.SaveChanges();
                return RedirectToAction("Sach", "Admin");
            }
            else
            {
                return View();
            }
        }

        public ActionResult TheLoaiPartial()
        {
            var lst = db.THELOAIs.ToList();
            return View(lst);
        }

        public ActionResult XoaTheLoai(int MASP)
        {
            THELOAI theloai = db.THELOAIs.Single(x => x.MATHELOAI == MASP);
            db.THELOAIs.Remove(theloai);
            db.SaveChanges();
            return RedirectToAction("TheLoaiPartial", "Admin");
        }

        [HttpPost]
        public ActionResult CapNhatTheLoai(int MASP, FormCollection f)
        {
            THELOAI theloai = db.THELOAIs.Single(x => x.MATHELOAI == MASP);
            theloai.TENTHELOAI = f["txtTenTheLoai"];
            db.SaveChanges();
            return RedirectToAction("TheLoaiPartial", "Admin");
        }

        public ActionResult XoaTacGia(int MATG)
        {
            TACGIA tacgia = db.TACGIAs.Single(x => x.MATG == MATG);
            db.TACGIAs.Remove(tacgia);
            db.SaveChanges();
            return RedirectToAction("TacGiaPartial", "Admin");
        }
        [HttpPost]
        public ActionResult CapNhatTacGia(int MATG, FormCollection f)
        {
            TACGIA tacgia = db.TACGIAs.Single(x => x.MATG == MATG);
            var tentacgia = f["tentacgia"];
            tacgia.TENTG = f["txtTenTacGia"];

            db.SaveChanges();
            return RedirectToAction("TacGiaPartial", "Admin");
        }
        public ActionResult TacGiaPartial()
        {
            var lst = db.TACGIAs.ToList();
            return View(lst);
        }

        
        public ActionResult ThemTheLoai()
        {
            return View();
        }
    }
}
