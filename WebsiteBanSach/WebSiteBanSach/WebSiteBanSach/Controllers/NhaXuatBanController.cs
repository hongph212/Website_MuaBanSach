using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;
namespace WebSiteBanSach.Controllers
{
    public class NhaXuatBanController : Controller
    {
        //
        // GET: /NhaXuatBan/
        QL_SACHEntities1 db = new QL_SACHEntities1();
        public ActionResult NhaXuatBanPartial()
        {
            var ListNXB = db.NHAXUATBANs.OrderBy(nbx => nbx.TENNXB).ToList();
            return View(ListNXB);
        }
        public ViewResult SachTheoNXB(int MaNXB)
        {
            var ListSach = db.SACHes.Where(s => s.MANXB == MaNXB).OrderBy(s => s.GIABAN).ToList();
            if (ListSach.Count == 0)
            {
                ViewBag.Sach = "Không có sách nào thuộc nhà xuất bản này !";
            }
            return View(ListSach);

        } 
    }
}
