using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;
namespace FilmDiziSitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 db = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
            var kategori = db.TBLBLOG.Where(x => x.BLOGKATEGORI == id).ToList();
            Repeater1.DataSource = kategori;
            Repeater1.DataBind();

            var turler = db.TBLTUR.ToList();
            Repeater5.DataSource = turler;
            Repeater5.DataBind();

            var kategoriler = db.TBLKATEGORI.ToList();
            Repeater2.DataSource = kategoriler;
            Repeater2.DataBind();

            var Blglr = db.TBLBLOG.OrderByDescending(x => x.BLOGID).Take(5).ToList();
            Repeater3.DataSource = Blglr;
            Repeater3.DataBind();

            var yorum = db.TBLYORUM.OrderByDescending(y => y.YORUMID).Take(5).ToList();
            Repeater4.DataSource = yorum;
            Repeater4.DataBind();
        }
    }
}