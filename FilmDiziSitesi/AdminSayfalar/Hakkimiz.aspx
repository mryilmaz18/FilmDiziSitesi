<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkimiz.aspx.cs" Inherits="FilmDiziSitesi.AdminSayfalar.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>AÇIKLAMA</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("ACIKLAMA") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"HakkimizSil.aspx?ID="+Eval("ID")%>' CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"HakkimizGuncelle.aspx?ID="+Eval("ID")%>' CssClass="btn btn-success">Güncelle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
        <a href="/AdminSayfalar/HakkimizYeni.aspx" class="btn btn-primary">YENİ BİLGİ EKLE</a>
</asp:Content>
