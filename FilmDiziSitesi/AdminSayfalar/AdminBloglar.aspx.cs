using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi.AdminSayfalar
{
    public partial class AdminBloglar : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 db = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICIAD"]==null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz: "+Session["KULLANICIAD"].ToString());
            }
            Repeater1.DataSource = db.TBLBLOG.ToList();
            Repeater1.DataBind();
        }
    }
}