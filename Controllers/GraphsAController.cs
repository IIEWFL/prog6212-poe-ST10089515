using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebModuleApp.Models;  // Make sure 'Graph' is in this namespace
using WebModuleApp.DataLayer;

namespace WebModuleApp.Controllers
{
    public class GraphsAController : Controller
    {
        private readonly DbContextGraph _context;

        public GraphsAController(DbContextGraph context)
        {
            _context = context;
        }

        // GET: GraphsA
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ShowGraphData()
        {
            return View();
        }

        [HttpPost]
        public List<object> GetGraphsAData()
        {
            List<object> data = new List<object>();

            // Assuming Graph is a DbSet<Graph> in your context

            // Extract ModuleId values
           // List<int?> moduleIds = _context.GraphData.Select(g => g.ModuleId).Distinct().ToList();
           // data.AddRange(moduleIds);

            // Extract HoursPerWeek values
           // List<double?> hours = _context.GraphData.Select(p => p.HoursPerWeek).ToList();
           // data.AddRange(hours.Cast<object>());

            return data;
        }
    }
}
