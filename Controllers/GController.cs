using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebModuleApp.DataLayer;
using WebModuleApp.Models;
using static WebModuleApp.Models.Module;

namespace WebModuleApp.Controllers
{
    public class GController : Controller
    {
        private ModuleAppDEMO2Entities db = new ModuleAppDEMO2Entities();
        private Module module = null;
        private readonly ModuleService _moduleService;
        private readonly DbContextGraph _context;

        // Parameterless constructor
        public GController()
        {
            // Initialize any default values or resources here
        }

        public GController(DbContextGraph context) : this()
        {
            _context = context;
        }

        public GController(ModuleService moduleService) : this()
        {
            _moduleService = moduleService;
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ShowGraphData()
        {
            var list = _moduleService.GetAll();
            List<int> repatitiions = new List<int>();

            var hour = list.Select(x => x.ClassHoursPerWeek).Distinct();
            foreach (var item in hour)
            {
                repatitiions.Add(list.Count(x => x.ClassHoursPerWeek == item));
            }

            var rep = repatitiions;
            ViewBag.HOURS = hour;
            ViewBag.REP = repatitiions.ToList();

            return View();
        }
    }
}
