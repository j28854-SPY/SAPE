//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SafetyGearsOnline
{
    using System;
    using System.Collections.Generic;
    
    public partial class merchandise_types
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public merchandise_types()
        {
            this.merchandise_table = new HashSet<merchandise_table>();
        }
    
        public int id { get; set; }
        public byte[] Name { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<merchandise_table> merchandise_table { get; set; }
    }
}
