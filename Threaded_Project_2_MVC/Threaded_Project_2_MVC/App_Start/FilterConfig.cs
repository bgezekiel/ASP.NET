﻿using System.Web;
using System.Web.Mvc;

namespace Threaded_Project_2_MVC
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
