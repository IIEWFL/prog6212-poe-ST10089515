// LoginController.cs

using System.Web.Mvc;

namespace WebModuleApp.Controllers
{
    public class LoginController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(string username, string password)
        {
            // Your login logic goes here
            return RedirectToAction("Index", "Home");
        }
    }
}
