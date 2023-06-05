using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class YorumGuncelle : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 DSE = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int c = int.Parse(Request.QueryString["YORUMID"]);
            if (Page.IsPostBack == false)
            {
                var deger = DSE.TBLYORUM.Find(c);
                txtbaslik.Text = deger.TBLBLOG.BLOGBASLIK;
                txttkullanici.Text = deger.KULLANICIAD;
                txticerik.Text = deger.YORUMICERIK;
            }
        }

        protected void Btnkydt_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["YORUMID"]);
            var yrm = DSE.TBLYORUM.Find(y);
            yrm.TBLBLOG.BLOGBASLIK = txtbaslik.Text;
            yrm.KULLANICIAD = txttkullanici.Text;
            yrm.YORUMICERIK = txticerik.Text;
            DSE.SaveChanges();
            Response.Redirect("Yorumlar.aspx");
        }
    }
}