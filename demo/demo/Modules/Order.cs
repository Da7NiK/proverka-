//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace demo.Modules
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            this.OrderMaterials = new HashSet<OrderMaterial>();
        }
    
        public int IdOrder { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string Descryption { get; set; }
        public Nullable<int> IdClient { get; set; }
        public string IdUser { get; set; }
        public Nullable<decimal> Summ { get; set; }
    
        public virtual Client Client { get; set; }
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderMaterial> OrderMaterials { get; set; }
    }
}
