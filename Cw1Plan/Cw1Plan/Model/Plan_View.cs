//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Cw1Plan.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Plan_View
    {
        public int IdView { get; set; }
        public Nullable<int> IdInput { get; set; }
        public string Line { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public string ProduceItem { get; set; }
        public string DisplayName { get; set; }
        public Nullable<int> QtyDate { get; set; }
        public Nullable<int> QtySum { get; set; }
        public Nullable<int> QtyBatchSum { get; set; }
        public string ShipDate { get; set; }
        public string Note { get; set; }
        public string CustomerOrder { get; set; }
        public string PurchaseRequisition { get; set; }
        public Nullable<System.DateTime> ProduceDate { get; set; }
        public string ThiTruong { get; set; }
        public string UserName { get; set; }
        public string UserNameEdit { get; set; }
        public Nullable<System.DateTime> DateEdit { get; set; }
    
        public virtual Plan_Input Plan_Input { get; set; }
        public virtual BOM_BomTp BOM_BomTp { get; set; }
        public virtual BOM_ThiTruong BOM_ThiTruong { get; set; }
    }
}
