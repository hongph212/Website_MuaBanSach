//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebSiteBanSach.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class NHAXUATBAN
    {
        public NHAXUATBAN()
        {
            this.PHIEUNHAPs = new HashSet<PHIEUNHAP>();
            this.SACHes = new HashSet<SACH>();
        }
    
        public int MANXB { get; set; }
        public string TENNXB { get; set; }
        public string DIACHI { get; set; }
        public string SDT { get; set; }
        public string HINHNXB { get; set; }
    
        public virtual ICollection<PHIEUNHAP> PHIEUNHAPs { get; set; }
        public virtual ICollection<SACH> SACHes { get; set; }
    }
}
