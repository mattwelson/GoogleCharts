using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GoogleCharts.Web.Controllers
{
    public class FitbitController : Controller
    {
        // GET: Fitbit
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Auth()
        {
            return Content("Hello");
        }

        public ActionResult Callback()
        {
            return Content("Callback");
        }
    }
}