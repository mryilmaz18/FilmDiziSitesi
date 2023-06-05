using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 db = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var bloglar = db.TBLBLOG.ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();

            var turler = db.TBLTUR.ToList();
            Repeater5.DataSource = turler;
            Repeater5.DataBind();

            var kategoriler = db.TBLKATEGORI.ToList();
            Repeater2.DataSource = kategoriler;
            Repeater2.DataBind();

            var Blglr = db.TBLBLOG.OrderByDescending(x => x.BLOGID).Take(10).ToList();
            Repeater3.DataSource = Blglr;
            Repeater3.DataBind();

            var yorum = db.TBLYORUM.OrderByDescending(y => y.YORUMID).Take(10).ToList();
            Repeater4.DataSource = yorum;
            Repeater4.DataBind();


        }

        protected void btnara_Click(object sender, EventArgs e)
        {
            Response.Redirect("Arama.aspx?gelendeger=" + txtfilm.Text.Trim());
        }
    }
}