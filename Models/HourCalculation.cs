//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebModuleApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class HourCalculation
    {
        public int HourCalculationId { get; set; }
        public Nullable<int> ModuleId { get; set; }
        public Nullable<int> SemesterId { get; set; }
        public Nullable<double> SelfStudyHours { get; set; }
    
        public virtual Module Module { get; set; }
        public virtual Semester Semester { get; set; }
    }
}