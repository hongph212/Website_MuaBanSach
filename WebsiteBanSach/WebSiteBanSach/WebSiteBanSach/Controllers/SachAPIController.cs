using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebSiteBanSach.Models;

namespace WebSiteBanSach.Controllers
{
    public class SachAPIController : ApiController
    {
        QL_SACHEntities1 db = new QL_SACHEntities1();
        public IEnumerable<SACH> Get()
        {
            return db.SACHes.ToList();
        }

        // GET api/values/5
        public SACH Get(int id)
        {
            return db.SACHes.Single(x => x.MASACH == id);
        }
    }
}
