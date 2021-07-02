using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;

namespace WebSiteBanSach.Controllers
{
    public class NguoiDungController : Controller
    {
        //
        // GET: /NguoiDung/

        public ActionResult Index()
        {
            return View();
        }
        QL_SACHEntities1 db = new QL_SACHEntities1();
        public ActionResult DangXuat()
        {
            Session.Remove("taikhoan");
            return RedirectToAction("DangNhap", "NguoiDung");
        }
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection f)
        {
            NGUOIDUNG nd = new NGUOIDUNG();
            var tendn = f["tendn"];
            var mk = f["matkhau"];
            if (string.IsNullOrEmpty(tendn))
            {
                ViewData["Loi2"] = "Không được để trống";
            }
            if (string.IsNullOrEmpty(mk))
            {
                ViewData["Loi3"] = "Không được để trống";
            }
            nd = db.NGUOIDUNGs.SingleOrDefault(m => m.USERNAME == tendn && m.PASS == mk);
            if (nd == null)
            {
                ViewBag.tb = "Tên đăng nhập hoặc mật khẩu không đúng";
                return View();
            }
            else
            {
                Session["taikhoan"] = nd;
                if (nd.QUYEN == 1)
                {
                    return RedirectToAction("Sach", "Admin");
                }
            }
            return RedirectToAction("SachPartial", "Sach");
        }
        [HttpPost]
        public ActionResult DangKy(NGUOIDUNG kh, FormCollection f)
        {
            var tendn = f["tendn"];
            var hoten = f["hoten"];
            var matkhau = f["matkhau"];
            var rematkhau = f["rematkhau"];
            var gioitinh = f["gioitinh"];
            var dienthoai = f["dienthoai"];
            var ngaysinh = string.Format("{0:MM/DD/YYYY}", f["ngaysinh"]);
            var email = f["email"];
            //var diachi = f["diachi"];
            if (string.IsNullOrEmpty(hoten))
            {
                ViewData["loi1"] = "họ tên không được bỏ trống";
            }
            if (string.IsNullOrEmpty(ngaysinh))
            {
                ViewData["loi2"] = "vui lòng nhập ngày sinh";
            }
            if (string.IsNullOrEmpty(gioitinh))
            {
                ViewData["loi3"] = "vui lòng chọn giới tính";
            }
            if (string.IsNullOrEmpty(dienthoai))
            {
                ViewData["loi4"] = "vui lòng nhập số điện thoại";
            }
            if (string.IsNullOrEmpty(tendn))
            {
                ViewData["loi5"] = "tên đăng nhập không được bỏ trống";
            }
            if (string.IsNullOrEmpty(matkhau))
            {
                ViewData["loi6"] = "vui lòng nhập mật khẩu";
            }
            if (string.IsNullOrEmpty(rematkhau))
            {
                ViewData["loi7"] = "vui lòng nhập mật khẩu";
            }
            if (!string.IsNullOrEmpty(tendn) && !string.IsNullOrEmpty(hoten) && !string.IsNullOrEmpty(matkhau) && !string.IsNullOrEmpty(rematkhau) && !string.IsNullOrEmpty(dienthoai))
            {
                kh.TENND = hoten;
                kh.USERNAME = tendn;
                kh.PASS = matkhau;
                kh.NGAYSINH = DateTime.Parse(ngaysinh);
                kh.SDT = dienthoai;
                kh.EMAIL = email;
                kh.GIOITINH = gioitinh;
                kh.QUYEN = 2;
                db.NGUOIDUNGs.Add(kh);
                db.SaveChanges();
                return RedirectToAction("DangNhap", "NguoiDung");
            }
            else
            {
                return View();
            }
        }


    }
}
