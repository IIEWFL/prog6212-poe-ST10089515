using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebModuleApp.Models
{
    public class ModuleSelfStudyHours
    {
        public string ModuleCode { get; set; }
        public string ModuleName { get; set; }
        public int ModuleCredits { get; set; }
        public int ModuleClassHours { get; set; }
        public int Weeks { get; set; }
        public double SelfStudyHoursPerWeek { get; set; }



    }
}