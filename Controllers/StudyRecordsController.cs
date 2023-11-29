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
    public class StudyRecordsController : Controller
    {
        private ModuleAppDEMO2Entities db = new ModuleAppDEMO2Entities();

        // GET: StudyRecords
        public ActionResult Index()
        {
            return View(db.StudyRecords.ToList());
        }

        // GET: StudyRecords/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudyRecord studyRecord = db.StudyRecords.Find(id);
            if (studyRecord == null)
            {
                return HttpNotFound();
            }
            return View(studyRecord);
        }

        // GET: StudyRecords/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: StudyRecords/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "StudyRecordId,ModuleId,Hours,Date")] StudyRecord studyRecord)
        {
            if (ModelState.IsValid)
            {
                db.StudyRecords.Add(studyRecord);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(studyRecord);
        }

        // GET: StudyRecords/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudyRecord studyRecord = db.StudyRecords.Find(id);
            if (studyRecord == null)
            {
                return HttpNotFound();
            }
            return View(studyRecord);
        }

        // POST: StudyRecords/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "StudyRecordId,ModuleId,Hours,Date")] StudyRecord studyRecord)
        {
            if (ModelState.IsValid)
            {
                db.Entry(studyRecord).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(studyRecord);
        }

        // GET: StudyRecords/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudyRecord studyRecord = db.StudyRecords.Find(id);
            if (studyRecord == null)
            {
                return HttpNotFound();
            }
            return View(studyRecord);
        }

        // POST: StudyRecords/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            StudyRecord studyRecord = db.StudyRecords.Find(id);
            db.StudyRecords.Remove(studyRecord);
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
