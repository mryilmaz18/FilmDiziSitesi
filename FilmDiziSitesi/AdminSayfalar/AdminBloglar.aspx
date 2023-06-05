<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBloglar.aspx.cs" Inherits="FilmDiziSitesi.AdminSayfalar.AdminBloglar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>BASLIK</th>
            <th>TARIH</th>
            <th>TÜR</th>
            <th>KATEGORİ</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("BLOGID") %></td>
                    <td><%# Eval("BLOGBASLIK") %></td>
                    <td><%# Eval("BLOGTARIH") %></td>
                    <td><%# Eval("BLOGTUR") %></td>
                    <td><%# Eval("BLOGKATEGORI") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"BlogSil.aspx?BLOGID="+Eval("BLOGID")%>' CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"BlogGuncelle.aspx?BLOGID="+Eval("BLOGID")%>' CssClass="btn btn-success">Güncelle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="/AdminSayfalar/YeniBlog.aspx" class="btn btn-primary">YENİ BLOG EKLE</a>
</asp:Content>
