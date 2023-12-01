using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Microsoft.EntityFrameworkCore;
using WebModuleApp.DataLayer;
using WebModuleApp.Models;

namespace WebModuleApp
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            // Add this route to map /Home/Login to the Login.aspx page
            routes.MapPageRoute("LoginRoute", "Home/Login", "~/Login.aspx");




            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
