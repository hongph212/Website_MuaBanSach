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
    
    public partial class PHIEUNHAP
    {
        public PHIEUNHAP()
        {
            this.CHITIETPNs = new HashSet<CHITIETPN>();
        }
    
        public int MAPN { get; set; }
        public Nullable<double> TONGTIEN { get; set; }
        public Nullable<int> MANXB { get; set; }
        public Nullable<System.DateTime> NGAYNHAP { get; set; }
    
        public virtual ICollection<CHITIETPN> CHITIETPNs { get; set; }
        public virtual NHAXUATBAN NHAXUATBAN { get; set; }
    }
}
