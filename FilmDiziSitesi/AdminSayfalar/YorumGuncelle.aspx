<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumGuncelle.aspx.cs" Inherits="FilmDiziSitesi.AdminSayfalar.YorumGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group">
        <asp:TextBox ID="txtbaslik" runat="server" CssClass="form-control" placeholder="Blog Başlık" Enabled="false"></asp:TextBox>
        <br />
        <asp:TextBox ID="txttkullanici" runat="server" CssClass="form-control" placeholder="Kullanıcı Ad Güncelle"></asp:TextBox>
        <br />
        <asp:TextBox ID="txticerik" runat="server" CssClass="form-control" placeholder="Yorum İçerik Güncelle" Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Btnkydt" runat="server" Class="btn btn-success" Text="Yorum Güncelle" OnClick="Btnkydt_Click" />
    </form>
</asp:Content>
