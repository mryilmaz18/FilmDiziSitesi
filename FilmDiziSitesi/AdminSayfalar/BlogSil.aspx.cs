using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class BlogSil : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 db = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var blog = db.TBLBLOG.Find(x);
            db.TBLBLOG.Remove(blog);
            db.SaveChanges();
            Response.Redirect("AdminBloglar.aspx");
        }
    }
}