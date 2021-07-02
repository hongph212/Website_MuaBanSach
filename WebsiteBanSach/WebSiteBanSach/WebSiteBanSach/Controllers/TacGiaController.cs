using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;

namespace WebSiteBanSach.Controllers
{
    public class TacGiaController : Controller
    {
        QL_SACHEntities1 db = new QL_SACHEntities1();

        public ActionResult TacGiaPartial()
        {
            var ListTG = db.TACGIAs.OrderBy(tg => tg.MATG).Take(5).ToList();
            return View(ListTG);
        }

        public ViewResult SachTheoTG(int maTG)
        {
            var ListSach = db.SACHes.Where(s => s.MATACGIA == maTG).ToList();
            TACGIA tg = db.TACGIAs.Single(t => t.MATG == maTG);
            ViewBag.TG = tg.TENTG;
            if (ListSach.Count == 0)
            {
                ViewBag.Sach = "Không có sách nào thuộc tác giả này !";
            }
            return View(ListSach);

        }
    }
}
