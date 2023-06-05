<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BlogGuncelle.aspx.cs" Inherits="FilmDiziSitesi.AdminSayfalar.BlogGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
        <asp:TextBox ID="txtbaslik" runat="server" CssClass="form-control" placeholder="Başlık Güncelle"></asp:TextBox>
        <br />
        <asp:TextBox ID="txttarih" runat="server" CssClass="form-control" placeholder="Tarih Güncelle"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtgorsel" runat="server" CssClass="form-control" placeholder="Görsel Güncelle"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownListTur" runat="server" CssClass="form-control" DataTextField="TURAD" DataValueField="TURID"></asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownListKategori" runat="server" CssClass="form-control" DataTextField="KATEGORIAD" DataValueField="KATEGORIID"></asp:DropDownList>
        <br />
        <asp:TextBox ID="txticerik" runat="server" CssClass="form-control" placeholder="İçerik Güncelle" Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Btnkydt" runat="server" Class="btn btn-success" Text="Blog Güncelle" OnClick="Btnkydt_Click" />
    </form>
</asp:Content>
