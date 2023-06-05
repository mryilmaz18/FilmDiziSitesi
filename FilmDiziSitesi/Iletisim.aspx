<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="FilmDiziSitesi.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="contact-content">
            <div class="container">
                <asp:Image ID="imgResim" runat="server" ImageUrl="~/resimler/ofisici.jpg" style="height: 600px; width: 1160px;"/>
                <div class="contact-info">
                    <br />
                    <h2>İLETİŞİM</h2>
                    <p>Blog sayfamızda bulunan film ve dizileri sizler için eklemiş bulunmaktayız. Önerileriniz ve şikayetleriniz için lütfen bu panelden bize mesaj gönderebilirisiniz. Mesaj gönderme sırasında mutlaka mail adresinizi doğru bir şekilde yazınız lütfen size bize iletmiş olduğunuz mail adresinden ulaşabilelim.Ziyaretiniz için teşekkürler. </p>
                </div>
                <div class="contact-details">
                    <form runat="server">
                        <asp:TextBox ID="TxtAd" runat="server" placeholder="Adınız ve soyadınız" required=""></asp:TextBox>
                        <asp:TextBox ID="TxtEmail" runat="server" placeholder="Email adresiniz" required=""></asp:TextBox>
                        <asp:TextBox ID="TxtTel" runat="server" placeholder="Telefon Numaranız" required=""></asp:TextBox>
                        <asp:TextBox ID="TxtKonu" runat="server" placeholder="Konu giriniz" required=""></asp:TextBox>
                        <asp:TextBox ID="TxtMesaj" runat="server" placeholder="Mesaj ve önerileriniz" TextMode="MultiLine" Height="100"></asp:TextBox>
                        <asp:Button ID="BtnGonder" runat="server" Text="Gönder" OnClick="BtnGonder_Click" />
                    </form>
                </div>
                <div class="contact-details">
                    <div class="col-md-6 contact-map">
                        <h4>Bİ KAHVE?</h4>
                        <div class="mapouter"><div class="gmap_canvas"><iframe width="800" height="600" id="gmap_canvas" src="https://maps.google.com/maps?q=konya karatay çevre parkı&t=k&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://2yu.co"></a><br><style>.mapouter{position:relative;text-align:right;height:800px;width:600px;}</style><a href="https://embedgooglemap.2yu.co"></a><style>.gmap_canvas {overflow:hidden;background:none!important;height:800px;width:600px;} </style></div></div>
                    </div>
                    <div class="col-md-6 company_address">
                        <h4>Bizimle İletişime Geç</h4><br />
                        <p>Phone:(0533) 222 666 444</p>
                        <p>Fax: (000) 123 456 78 0</p>
                        <p>Email: <a href="mailto:info@example.com">info@kingfomovie.com</a></p>
                        <p>Bizi Takip Et <a href="#">Facebook</a>, <a href="#">Twitter</a>, <a href="#">Instagram</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
</asp:Content>
