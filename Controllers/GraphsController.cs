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
    public class GraphsController : Controller
    {
        private ModuleAppDEMO2Entities db = new ModuleAppDEMO2Entities();

        // GET: Graphs
        public ActionResult Index()
        {
            var graphs = db.Graphs.Include(g => g.Module).Include(g => g.Semester).Include(g => g.StudyRecord);
            return View(graphs.ToList());
        }

        // GET: Graphs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Graph graph = db.Graphs.Find(id);
            if (graph == null)
            {
                return HttpNotFound();
            }
            return View(graph);
        }

        // GET: Graphs/Create
        public ActionResult Create()
        {
            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code");
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId");
            ViewBag.StudyRecordId = new SelectList(db.StudyRecords, "StudyRecordId", "StudyRecordId");
            return View();
        }

        // POST: Graphs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "GraphId,ModuleId,StudyRecordId,SemesterId,HoursPerWeek,Date,IdealHoursPerWeek")] Graph graph)
        {
            if (ModelState.IsValid)
            {
                db.Graphs.Add(graph);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code", graph.ModuleId);
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId", graph.SemesterId);
            ViewBag.StudyRecordId = new SelectList(db.StudyRecords, "StudyRecordId", "StudyRecordId", graph.StudyRecordId);
            return View(graph);
        }

        // GET: Graphs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Graph graph = db.Graphs.Find(id);
            if (graph == null)
            {
                return HttpNotFound();
            }
            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code", graph.ModuleId);
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId", graph.SemesterId);
            ViewBag.StudyRecordId = new SelectList(db.StudyRecords, "StudyRecordId", "StudyRecordId", graph.StudyRecordId);
            return View(graph);
        }

        // POST: Graphs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "GraphId,ModuleId,StudyRecordId,SemesterId,HoursPerWeek,Date,IdealHoursPerWeek")] Graph graph)
        {
            if (ModelState.IsValid)
            {
                db.Entry(graph).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ModuleId = new SelectList(db.Modules, "ModuleId", "Code", graph.ModuleId);
            ViewBag.SemesterId = new SelectList(db.Semesters, "SemesterId", "SemesterId", graph.SemesterId);
            ViewBag.StudyRecordId = new SelectList(db.StudyRecords, "StudyRecordId", "StudyRecordId", graph.StudyRecordId);
            return View(graph);
        }

        // GET: Graphs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Graph graph = db.Graphs.Find(id);
            if (graph == null)
            {
                return HttpNotFound();
            }
            return View(graph);
        }

        // POST: Graphs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Graph graph = db.Graphs.Find(id);
            db.Graphs.Remove(graph);
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
