using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanSach.Models;
using PagedList;
namespace WebSiteBanSach.Controllers
{
    public class SachController : Controller
    {
        //
        // GET: /Sach/
        QL_SACHEntities1 db = new QL_SACHEntities1();
        public ActionResult SachPartial(int? page)
        {
            var ListSach = db.SACHes.OrderBy(cd => cd.TENSACH).ToList();


            // 2. Nếu page = null thì đặt lại là 1.
            if (page == null) page = 1;

            // 3. Tạo truy vấn, lưu ý phải sắp xếp theo trường nào đó, ví dụ OrderBy
            // theo LinkID mới có thể phân trang.
            var links = (from l in db.SACHes
                         select l).OrderBy(x => x.MASACH);

            // 4. Tạo kích thước trang (pageSize) hay là số Link hiển thị trên 1 trang
            int pageSize = 8;

            // 4.1 Toán tử ?? trong C# mô tả nếu page khác null thì lấy giá trị page, còn
            // nếu page = null thì lấy giá trị 1 cho biến pageNumber.
            int pageNumber = (page ?? 1);

            // 5. Trả về các Link được phân trang theo kích thước và số trang.
            return View(links.ToPagedList(pageNumber, pageSize));

        }
        public ActionResult XemChiTiet(int ms)
        {
            SACH SP = db.SACHes.Single(s => s.MASACH == ms);
            if (SP == null)
            {
                return HttpNotFound();
            }
            return View(SP);
        }
        [HttpPost]
        public ActionResult SachPartial(int? page,FormCollection f)
        {
            var ten = f["timkiem"];
            var ListSach = db.SACHes.Where(x => x.TENSACH.Contains(ten)).ToList();
            // 2. Nếu page = null thì đặt lại là 1.
            if (page == null) page = 1;

            // 3. Tạo truy vấn, lưu ý phải sắp xếp theo trường nào đó, ví dụ OrderBy
            // theo LinkID mới có thể phân trang.
            var links = (from l in db.SACHes.Where(x => x.TENSACH.Contains(ten))
                         select l).OrderBy(x => x.MASACH);

            // 4. Tạo kích thước trang (pageSize) hay là số Link hiển thị trên 1 trang
            int pageSize = 8;

            // 4.1 Toán tử ?? trong C# mô tả nếu page khác null thì lấy giá trị page, còn
            // nếu page = null thì lấy giá trị 1 cho biến pageNumber.
            int pageNumber = (page ?? 1);

            // 5. Trả về các Link được phân trang theo kích thước và số trang.
            return View(links.ToPagedList(pageNumber, pageSize));
     

        }
        

    }
}
