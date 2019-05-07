using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//https://www.dotnetcurry.com/ShowArticle.aspx?ID=129

namespace Cassidy
{
    /// <summary>
    /// Summary description for ShowImage
    /// </summary>
    public class ShowImage : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}