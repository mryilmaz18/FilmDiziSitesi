<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="FilmDiziSitesi.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">
                            <div class="content-grid-info">
                                <img src="<%# Eval("BLOGGORSEL") %>" style="height: 360px; width: 650px;" alt="" />
                                <div class="post-info">
                                    <h4><a href="BlogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval ("BLOGBASLIK") %></a>  <%# Eval("BLOGTARIH") %></h4>
                                    <p>"<%# Eval("BLOGICERIK") %>"</p>
                                    <a href="BlogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval ("BLOGBASLIK") %><span></span>Devamı İçin Tıkla...</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="navbar-form navbar-brand">
                <form runat="server">
                    <asp:TextBox ID="txtfilm" runat="server" CssClass="form-control" placeholder="Film İsmi" required=""></asp:TextBox>
                    <asp:Button ID="btnara" runat="server" CssClass="form-control" Text="Arama" OnClick="btnara_Click" />
                </form>
            </div>
            <div class="col-md-4 content-right">
                <div class="categories">
                    <li class="active"><a href="Anasayfa.aspx">TÜRLER</a></li>
                    <ul>
                        <asp:Repeater ID="Repeater5" runat="server">
                            <ItemTemplate>
                                <li><a href="TurDetay.aspx?TURID=<%# Eval("TURID") %>"><%# Eval ("TURAD") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="categories">
                    <li class="active"><a href="Anasayfa.aspx">KATEGORİLER</a></li>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <li><a href="KategoriDetay.aspx?KATEGORIID=<%# Eval("KATEGORIID") %>"><%# Eval ("KATEGORIAD") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <br />
                <div class="categories">
                    <li class="active"><a href="Anasayfa.aspx">SON BLOGLAR</a></li>
                    <ul>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <li><a href="BlogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval ("BLOGBASLIK") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <br />
                <div class="categories">
                    <li class="active"><a href="Anasayfa.aspx">SON YORUMLAR</a></li>
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <ul>
                                <li><a href="#"><%# Eval("KULLANICIAD") %>: <%# Eval("YORUMICERIK") %> </a></li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
