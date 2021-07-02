using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;

namespace WebSiteBanSach.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        QL_SACHEntities1 db = new QL_SACHEntities1();
        public ActionResult TrangChu()
        {
            return View();
        }

        public ActionResult Banner()
        {
            var ListBanner = db.BANNERs.OrderBy(b => b.HINH).ToList();
            return View(ListBanner);
        }
        public ActionResult TT()
        {
            return View();
        }
        public ActionResult GioiThieu()
        {
            return View();
        }
        public ActionResult ChinhSach()
        {
            return View();
        }
    }
}
