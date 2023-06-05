<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizYeni.aspx.cs" Inherits="FilmDiziSitesi.AdminSayfalar.HakkimizYeni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form runat="server" class="form-group">
        <asp:TextBox ID="txticerik" runat="server" CssClass="form-control" placeholder="İçerik Oluşturunuz" Height="100px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Btnkydt" runat="server" Class="btn btn-primary" Text="Bilgiyi Kaydet" OnClick="Btnkydt_Click" />
    </form>

</asp:Content>
