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
    public class HourCalculationsController : Controller
    {
        private ModuleAppDEMO2Entities db = new ModuleAppDEMO2Entities();

        // GET: HourCalculations
        public ActionResult Index()
        {
            var hourCalculations = db.HourCalculations.Include(h => h.Module).Include(h => h.Semester);
            return View(hourCalculations.ToList());
        }

        // GET: HourCalculations/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HourCalculation hourCalculation = db.HourCalculations.Find(id);
            if (hourCalculation == null)
            {
                return HttpNotFound();
            }
            return View(hourCalculation);
        }

        // GET: HourCalculations/Create
        public ActionResult Create()
        {
            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code");
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId");
            return View();
        }

        // POST: HourCalculations/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "HourCalculationId,ModuleId,SemesterId,SelfStudyHours")] HourCalculation hourCalculation)
        {
            if (ModelState.IsValid)
            {
                db.HourCalculations.Add(hourCalculation);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code", hourCalculation.ModuleId);
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId", hourCalculation.SemesterId);
            return View(hourCalculation);
        }

        // GET: HourCalculations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HourCalculation hourCalculation = db.HourCalculations.Find(id);
            if (hourCalculation == null)
            {
                return HttpNotFound();
            }
            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code", hourCalculation.ModuleId);
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId", hourCalculation.SemesterId);
            return View(hourCalculation);
        }

        // POST: HourCalculations/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "HourCalculationId,ModuleId,SemesterId,SelfStudyHours")] HourCalculation hourCalculation)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hourCalculation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code", hourCalculation.ModuleId);
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId", hourCalculation.SemesterId);
            return View(hourCalculation);
        }

        // GET: HourCalculations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HourCalculation hourCalculation = db.HourCalculations.Find(id);
            if (hourCalculation == null)
            {
                return HttpNotFound();
            }
            return View(hourCalculation);
        }

        // POST: HourCalculations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HourCalculation hourCalculation = db.HourCalculations.Find(id);
            db.HourCalculations.Remove(hourCalculation);
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
