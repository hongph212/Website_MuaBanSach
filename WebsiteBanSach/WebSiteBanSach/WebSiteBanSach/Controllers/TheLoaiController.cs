using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;
namespace WebSiteBanSach.Controllers
{
    public class TheLoaiController : Controller
    {
        //
        // GET: /TheLoai/
        QL_SACHEntities1 db = new QL_SACHEntities1();
        public ActionResult TheLoaiPartial()
        {
            var ListTheLoai = db.THELOAIs.Take(10).OrderBy(cd => cd.TENTHELOAI).ToList();

            return View(ListTheLoai);
        }

        public ViewResult SachTheoTL(int ms)
        {
            var ListSach = db.SACHes.Where(s => s.MATHELOAI == ms).OrderBy(s => s.GIABAN).ToList();
            THELOAI tl = db.THELOAIs.Single(TL => TL.MATHELOAI == ms);
            ViewBag.TL = tl.TENTHELOAI;
            if (ListSach.Count == 0)
            {
                ViewBag.Sach = "Không có sách nào thuộc thể loại nào !";
            }
            return View(ListSach);
        }

    }
}
