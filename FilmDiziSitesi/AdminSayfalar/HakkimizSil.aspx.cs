using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class HakkimizSil : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 fse = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int v = Convert.ToInt32(Request.QueryString["ID"]);
            var hakkimz = fse.TBLHAKKIMIZDA.Find(v);
            fse.TBLHAKKIMIZDA.Remove(hakkimz);
            fse.SaveChanges();
            Response.Redirect("Hakkimiz.aspx");
        }
    }
}