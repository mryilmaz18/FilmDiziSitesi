using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class YorumSil : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 fse = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int z = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var yorum = fse.TBLYORUM.Find(z);
            fse.TBLYORUM.Remove(yorum);
            fse.SaveChanges();
            Response.Redirect("Yorumlar.aspx");
        }
    }
}