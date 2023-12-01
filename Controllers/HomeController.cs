using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebModuleApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult ShowGraphData()
        {
            return View();

        }

        //public List<object> GetGraphData()
        //{
        //    List<object> data = new List<object>(); 
        //    List<string> labels = _dbcontext.Order.Graphs.Select(g => g.ModuleId).Distinct().ToList();

        //}
    }
}
