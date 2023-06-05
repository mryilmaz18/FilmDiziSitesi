<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="FilmDiziSitesi.AdminSayfalar.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>KULLANICI</th>
            <th>MAİL</th>
            <th>KONU</th>
            <th>MESAJ</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("MESAJID") %></td>
                    <td><%# Eval("ADSOYAD") %></td>
                    <td><%# Eval("MAIL") %></td>
                    <td><%# Eval("KONU") %></td>
                    <td><%# Eval("MESAJ") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
