using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi
{
    public partial class Arama : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 db = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string gelen = Request.QueryString["gelendeger"];
            var bloglar = db.TBLBLOG.Where(x => x.BLOGBASLIK.Contains(gelen)).ToList();
            if (bloglar.Count > 0)
            {
                Repeater1.DataSource = bloglar;
                Repeater1.DataBind();
            }
            else
            {
                Response.Redirect("404.aspx");
            }

        }
    }
}