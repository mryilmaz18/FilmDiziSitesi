using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class HakkimizYeni : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 DSE = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnkydt_Click(object sender, EventArgs e)
        {
            TBLHAKKIMIZDA kydt = new TBLHAKKIMIZDA();
            kydt.ACIKLAMA = txticerik.Text;
            DSE.TBLHAKKIMIZDA.Add(kydt);
            DSE.SaveChanges();
            Response.Redirect("Hakkimiz.aspx");
        }
    }
}