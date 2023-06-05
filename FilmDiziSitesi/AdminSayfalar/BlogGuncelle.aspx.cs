using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class BlogGuncelle : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 DSE = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["BLOGID"]);

            if (Page.IsPostBack == false)
            {
                var turler = (from x in DSE.TBLTUR
                              select new
                              {
                                  x.TURAD,
                                  x.TURID
                              }).ToList();
                DropDownListTur.DataSource = turler;
                DropDownListTur.DataBind();

                var kategoriler = (from x in DSE.TBLKATEGORI
                                   select new
                                   {
                                       x.KATEGORIAD,
                                       x.KATEGORIID
                                   }).ToList();
                DropDownListKategori.DataSource = kategoriler;
                DropDownListKategori.DataBind();
                
                var deger = DSE.TBLBLOG.Find(y);
                txtbaslik.Text = deger.BLOGBASLIK;
                txttarih.Text = deger.BLOGTARIH.ToString();
                txtgorsel.Text = deger.BLOGGORSEL;
                txticerik.Text = deger.BLOGICERIK;
                DropDownListTur.SelectedValue = deger.BLOGTUR.ToString();
                DropDownListKategori.SelectedValue = deger.BLOGKATEGORI.ToString();
            }

        }

        protected void Btnkydt_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["BLOGID"]);
            var blog = DSE.TBLBLOG.Find(y);
            blog.BLOGBASLIK = txtbaslik.Text;
            blog.BLOGTARIH =DateTime.Parse(txttarih.Text);
            blog.BLOGGORSEL =txtgorsel.Text;
            blog.BLOGTUR= byte.Parse(DropDownListTur.SelectedValue);
            blog.BLOGKATEGORI = byte.Parse(DropDownListKategori.SelectedValue);
            blog.BLOGICERIK = txticerik.Text;
            DSE.SaveChanges();
            Response.Redirect("AdminBloglar.aspx");

        }
    }
}