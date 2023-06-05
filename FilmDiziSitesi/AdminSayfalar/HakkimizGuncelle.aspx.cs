using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class HakkimizGuncelle : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 DSE = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int getir = Convert.ToInt16(Request.QueryString["ID"]);
            txttid.Text = getir.ToString();
            txttid.Enabled = false;
            if (Page.IsPostBack == false)
            {
                var deger = DSE.TBLHAKKIMIZDA.Find(getir);
                txticerik.Text = deger.ACIKLAMA;
            }
        }

        protected void Btnkydt_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["ID"]);
            var hkm = DSE.TBLHAKKIMIZDA.Find(y);
            hkm.ACIKLAMA = txticerik.Text;
            DSE.SaveChanges();
            Response.Redirect("Hakkimiz.aspx");
        }
    }
}