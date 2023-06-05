using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 db = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLHAKKIMIZDA.ToList();
            Repeater1.DataBind();
        }
    }
}