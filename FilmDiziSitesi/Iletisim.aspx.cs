using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmDiziSitesi.entity;

namespace FilmDiziSitesi
{
    public partial class Iletisim : System.Web.UI.Page
    {
        FilmDiziSitesiEntities1 db = new FilmDiziSitesiEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void temizle()
        {
            TxtAd.Text = " ";
            TxtEmail.Text = " ";
            TxtKonu.Text = " ";
            TxtTel.Text = " ";
            TxtMesaj.Text = " ";
        }
        protected void BtnGonder_Click(object sender, EventArgs e)
        {   
            TBLILETISIM t = new TBLILETISIM();
            t.ADSOYAD = TxtAd.Text;
            t.MAIL = TxtEmail.Text;
            t.TELEFON = TxtTel.Text;
            t.KONU = TxtKonu.Text;
            t.MESAJ = TxtMesaj.Text;
            db.TBLILETISIM.Add(t);
            db.SaveChanges();
            temizle();
            
        }
    }
}