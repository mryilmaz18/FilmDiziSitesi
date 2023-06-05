<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="FilmDiziSitesi.BlogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
    <!DOCTYPE HTML>
    <html>
    <head>
        <link href="DiziBlogTema/web/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="DiziBlogTema/web/css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Personal Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!----webfonts---->
        <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--end slider -->
        <!--script-->
        <script type="text/javascript" src="DiziBlogTema/web/js/move-top.js"></script>
        <script type="text/javascript" src="DiziBlogTema/web/js/easing.js"></script>
        <!--/script-->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
                });
            });
        </script>
        <!---->

    </head>
    <body>
        <!---header---->
        <div class="header">
        </div>
        <!--/header-->
        <div class="single">
            <div class="container">
                <div class="col-md-8 single-main">
                    <div class="single-grid">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <img src="<%# Eval("BLOGGORSEL") %>" style="height: 400px; width: 730px; margin-bottom: 20px" />
                                <h3><%# Eval("BLOGBASLIK") %></h3>
                                <p><%# Eval("BLOGICERIK") %></p>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <ul class="comment-list">
                                <li>
                                    <img src="DiziBlogTema/web/images/avatar.png" class="img-responsive" alt="">
                                    <div class="desc">
                                        <p style="font-weight: bolder"><%# Eval("KULLANICIAD") %>:</p>
                                        <p><%# Eval("YORUMICERIK") %></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="content-form">
                        <h3>Düşüncelerini Paylaş</h3>
                        <form runat="server">
                            <asp:TextBox ID="txtKad" runat="server" 
                                placeholder="Kullanıcı adınız" required=""></asp:TextBox>
                            <asp:TextBox ID="txtMail" runat="server" 
                                placeholder="Mail adresiniz"></asp:TextBox>
                            <asp:TextBox ID="TxtYorum" runat="server" 
                                placeholder="Düşünceniz" TextMode="MultiLine" Height="100"></asp:TextBox>
                            <asp:Button ID="ButonGonder" runat="server" Text="Gönder" OnClick="ButonGonder_Click"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </body>
        </html>
</asp:Content>
