<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="FilmDiziSitesi.Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="about-content">
        <div class="container">
            <asp:Image ID="imgResim" runat="server" ImageUrl="~/resimler/sirket.jpg" style="height: 600px; width: 1160px;"/>
            <br />
            <br />
            <h2>HAKKIMIZDA BİLMEDİKLERİNİZ</h2>
            <div class="about-section">
                <div class="about-grid">
                    <h3>BU BLOGU NEDEN AÇTIM?</h3>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <p><%# Eval("ACIKLAMA")%> </p>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
    </div>
</asp:Content>
