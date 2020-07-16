<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LawInfo.aspx.cs" Inherits="ZoomLaCMS.FX.LawInfo" MasterPageFile="~/Common/Master/Empty.master" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <table class="table table-bordered table-striped">
        <tr><td class="td_m">键</td><td>值</td></tr>
    <%foreach (var item in result.Model)
        {%>
    <tr><td><%=item.Key %></td><td><%=item.Value %></td></tr>
    <%} %>
        </table>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script"></asp:Content>