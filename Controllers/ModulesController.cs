using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebModuleApp.DataLayer;
using WebModuleApp.Models;



using static WebModuleApp.Models.Module;


namespace WebModuleApp.Controllers
{
    public class ModulesController : Controller
    {
        private ModuleAppDEMO2Entities db = new ModuleAppDEMO2Entities();
        private readonly DbContextGraph _context;
        private Module _moduleInstance;
        // private readonly ModuleService _moduleService;


        // GET: Modules
        public ActionResult Index()
        {
            Module module = new Module();
            ViewBag.ChartScript = module.GetChartScript();
            ShowGraphData(); // Moved this line here if it's intended
            return View(db.Modules.ToList());
            // return View();
        }

        public Module Module;
        //Module module = null;
       // private readonly ModuleService _moduleService;

        public ModulesController()
        {


            Module = new Module();

            // Initialize any default values or resources here
            // _moduleService = new ModuleService(new ModuleAppDEMO2Entities()); // Initialize ModuleService (if necessary)
            //_moduleService = new ModuleService(new ModuleAppDEMO2Entities()); // Initialize ModuleService (if necessary)
        }
        // Constructor with DbContextGraph parameter
        //public ModulesController(ModuleService moduleService) : this()
        //{
        //   // _moduleService = moduleService;
        //}

        // Constructor with DbContextGraph parameter
        public ModulesController(DbContextGraph context) : this()
        {
            _context = context;
        }


        // GET: GraphsA


        public ActionResult ShowGraphData()
        {
            var list = Module.GetAllModules();

            // Prepare data for the chart
            var chartData = list
                .GroupBy(m => m.Name)
                .Select(group => new
                {
                    ModuleName = group.Key,
                    ClassHoursPerWeek = group.Sum(m => m.ClassHoursPerWeek ?? 0)
                })
                .OrderByDescending(data => data.ClassHoursPerWeek)
                .ToList();

            // Convert the data to JSON format
            ViewBag.ChartData = Newtonsoft.Json.JsonConvert.SerializeObject(chartData);


            return View();
        }

        [HttpPost]
        public List<object> GetGraphsAData()
        {
            List<object> data = new List<object>();


           

            return data;
        }


        // GET: Modules/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Module module = db.Modules.Find(id);
            if (module == null)
            {
                return HttpNotFound();
            }
            return View(module);
        }

        // GET: Modules/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Modules/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ModuleId,Code,Name,Credits,ClassHoursPerWeek")] Module module)
        {
            if (ModelState.IsValid)
            {
                db.Modules.Add(module);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(module);
        }

        // GET: Modules/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Module module = db.Modules.Find(id);
            if (module == null)
            {
                return HttpNotFound();
            }
            return View(module);
        }

        // POST: Modules/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ModuleId,Code,Name,Credits,ClassHoursPerWeek")] Module module)
        {
            if (ModelState.IsValid)
            {
                db.Entry(module).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(module);
        }

        // GET: Modules/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Module module = db.Modules.Find(id);
            if (module == null)
            {
                return HttpNotFound();
            }
            return View(module);
        }

        // POST: Modules/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Module module = db.Modules.Find(id);
            db.Modules.Remove(module);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
