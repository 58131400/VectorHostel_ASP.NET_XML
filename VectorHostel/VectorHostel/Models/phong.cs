//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VectorHostel.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class phong
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public phong()
        {
            this.giuong = new HashSet<giuong>();
        }
    
        public string maphong { get; set; }
        public string tenphong { get; set; }
        public string malp { get; set; }
        public Nullable<int> tang { get; set; }
        public Nullable<int> sogiuong { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<giuong> giuong { get; set; }
        public virtual loaiphong loaiphong { get; set; }
    }
}