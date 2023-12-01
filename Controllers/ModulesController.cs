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

        // GET: Modules
        public ActionResult Index()
        {
            ShowGraphData(); // Moved this line here if it's intended
            return View(db.Modules.ToList());
            // return View();
        }

        public Module Module;
        //Module module = null;
       // private readonly ModuleService _moduleService;

        public ModulesController()
        {

            Module module = new Module();
                
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

            List<int> repatitiions = new List<int>();

            var name = list.Select(p => p.Name).Distinct();

            var hour = list.Select(x => x.ClassHoursPerWeek).Distinct();
            foreach (var item in hour) {

                repatitiions.Add(list.Count(x => x.ClassHoursPerWeek == item));
                repatitiions.Add(list.Count(p => name.Contains(p.Name)));




            }
            foreach (var item in name)
            {
                repatitiions.Add(list.Count(p => p.Name == item));
            }

            var rep = repatitiions;
            ViewBag.NAME = name;
            ViewBag.HOURS = hour;
            ViewBag.REP = repatitiions.ToList();

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
