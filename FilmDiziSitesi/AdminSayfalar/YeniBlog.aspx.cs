using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class YeniBlog : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 DSE = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false) { 
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
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLBLOG kydt = new TBLBLOG();
            kydt.BLOGBASLIK = txtbaslik.Text;
            kydt.BLOGGORSEL = txtgorsel.Text;
            kydt.BLOGICERIK = txticerik.Text;
            kydt.BLOGTARIH = DateTime.Parse(txttarih.Text);
            kydt.BLOGTUR = byte.Parse(DropDownListTur.SelectedValue);
            kydt.BLOGKATEGORI = byte.Parse(DropDownListKategori.SelectedValue);
            DSE.TBLBLOG.Add(kydt);
            DSE.SaveChanges();
            Response.Redirect("AdminBloglar.aspx");

        }
    }
}