<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeBehind="Arama.aspx.cs" Inherits="FilmDiziSitesi.Arama" %>

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
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <%#Eval("BLOGBASLIK") %><br />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-md-4 content-right">
            </div>
            <div class="clearfix"></div>
        </div>
    </div>


</asp:Content>
