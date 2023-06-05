<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Istatistikler.aspx.cs" Inherits="FilmDiziSitesi.AdminSayfalar.Istatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <td>Toplam Blog Sayısı:
                <asp:Label ID="lblBlog" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Toplam Yorum Sayısı:
                <asp:Label ID="lblYorum" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Toplam Film Sayısı:
                <asp:Label ID="lblFilm" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td>Toplam Dizi Sayısı:
                <asp:Label ID="lblDizi" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Toplam Animasyon Sayısı:
                <asp:Label ID="lblAnimasyon" runat="server" Text="Label"></asp:Label>
            </td>
            <td>En Fazla Yorumlu Blog:
                <asp:Label ID="lblEFY" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>

    </table>
</asp:Content>
