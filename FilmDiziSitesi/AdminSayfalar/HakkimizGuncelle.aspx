<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizGuncelle.aspx.cs" Inherits="FilmDiziSitesi.AdminSayfalar.HakkimizGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group">
        <asp:TextBox ID="txttid" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
        <br />
        <asp:TextBox ID="txticerik" runat="server" CssClass="form-control" placeholder="Hakkımızda İçerik Güncelle" Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Btnkydt" runat="server" Class="btn btn-success" Text="Bilgiyi Güncelle" OnClick="Btnkydt_Click" />
    </form>

</asp:Content>
