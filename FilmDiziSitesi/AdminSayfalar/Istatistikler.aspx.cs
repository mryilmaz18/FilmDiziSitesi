using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;
namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 db = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblBlog.Text = db.TBLBLOG.Count().ToString();
            lblYorum.Text = db.TBLYORUM.Count().ToString();
            lblFilm.Text = db.TBLBLOG.Where(x => x.BLOGTUR == 2).Count().ToString();
            lblDizi.Text = db.TBLBLOG.Where(x => x.BLOGTUR == 1).Count().ToString();
            lblAnimasyon.Text = db.TBLBLOG.Where(x => x.BLOGTUR == 4).Count().ToString();
            lblEFY.Text = db.TBLBLOG.Where(y => y.BLOGID == db.TBLYORUM.GroupBy(x => x.YORUMBLOG).
                OrderByDescending(x => x.Count()).Select(z => z.Key).FirstOrDefault())
                    .Select(k => k.BLOGBASLIK).FirstOrDefault();


        }
    }
}