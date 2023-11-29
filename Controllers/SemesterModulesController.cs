using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebModuleApp.Models;

namespace WebModuleApp.Controllers
{
    public class SemesterModulesController : Controller
    {
        private ModuleAppDEMO2Entities db = new ModuleAppDEMO2Entities();

        // GET: SemesterModules
        public ActionResult Index()
        {
            var semesterModules = db.SemesterModules.Include(s => s.Module).Include(s => s.Semester);
            return View(semesterModules.ToList());
        }

        // GET: SemesterModules/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SemesterModule semesterModule = db.SemesterModules.Find(id);
            if (semesterModule == null)
            {
                return HttpNotFound();
            }
            return View(semesterModule);
        }

        // GET: SemesterModules/Create
        public ActionResult Create()
        {
            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code");
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId");
            return View();
        }

        // POST: SemesterModules/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SemesterModuleId,ModuleId,SemesterId")] SemesterModule semesterModule)
        {
            if (ModelState.IsValid)
            {
                db.SemesterModules.Add(semesterModule);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code", semesterModule.ModuleId);
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId", semesterModule.SemesterId);
            return View(semesterModule);
        }

        // GET: SemesterModules/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SemesterModule semesterModule = db.SemesterModules.Find(id);
            if (semesterModule == null)
            {
                return HttpNotFound();
            }
            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code", semesterModule.ModuleId);
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId", semesterModule.SemesterId);
            return View(semesterModule);
        }

        // POST: SemesterModules/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SemesterModuleId,ModuleId,SemesterId")] SemesterModule semesterModule)
        {
            if (ModelState.IsValid)
            {
                db.Entry(semesterModule).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code", semesterModule.ModuleId);
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId", semesterModule.SemesterId);
            return View(semesterModule);
        }

        // GET: SemesterModules/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SemesterModule semesterModule = db.SemesterModules.Find(id);
            if (semesterModule == null)
            {
                return HttpNotFound();
            }
            return View(semesterModule);
        }

        // POST: SemesterModules/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SemesterModule semesterModule = db.SemesterModules.Find(id);
            db.SemesterModules.Remove(semesterModule);
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
