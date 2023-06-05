using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class Iletisim : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 db = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var mesajlar = (from x in db.TBLILETISIM
                            select new
                            {
                                x.MESAJID,
                                x.ADSOYAD,
                                x.MAIL,
                                x.KONU,
                                x.MESAJ
                            }).ToList();
            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();
        }
    }
}