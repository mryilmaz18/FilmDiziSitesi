<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniBlog.aspx.cs" Inherits="FilmDiziSitesi.AdminSayfalar.YeniBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" class="form-group">
        <asp:TextBox ID="txtbaslik" runat="server" CssClass="form-control" placeholder="Başlık Giriniz"></asp:TextBox>
        <br />
        <asp:TextBox ID="txttarih" runat="server" CssClass="form-control" placeholder="Tarih Giriniz"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtgorsel" runat="server" CssClass="form-control" placeholder="Görsel Yükleyiniz"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownListTur" runat="server" CssClass="form-control" DataTextField="TURAD" DataValueField="TURID"></asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownListKategori" runat="server" CssClass="form-control" DataTextField="KATEGORIAD" DataValueField="KATEGORIID"></asp:DropDownList>
        <br />
        <asp:TextBox ID="txticerik" runat="server" CssClass="form-control" placeholder="İçerik Oluşturunuz" Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Btnkydt" runat="server" Class="btn btn-primary" Text="Blog Kaydet" OnClick="Button1_Click" />
    </form>

</asp:Content>
