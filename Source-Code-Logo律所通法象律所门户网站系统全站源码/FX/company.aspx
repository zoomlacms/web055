<%@ Page Language="C#" AutoEventWireup="true" CodeFile="company.aspx.cs" Inherits="ZoomLaCMS.FX.company" MasterPageFile="~/Common/Master/Empty.master" %>
<%@ Import Namespace="ZoomLaCMS.FX" %>
<%@ Import Namespace="System.Data" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><title></title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div class="panel panel-info">
    <div class="panel-heading">基本信息</div>
    <div class="panel-body">
        <div><span><%=Company.Model["Name"] %></span></div>
        <div>
            <span>电话：<%=Company.Model["PhoneNumber"] %></span>
            <span>邮箱：<%=Company.Model["Email"] %></span>
        </div>
        <div>
            <span>网址：<%=Company.Model["WebSite"] %></span>
            <span>地址：<%=Company.Model["Address"] %></span>
        </div>
    </div>
    <div class="panel-footer">
        <div>英文名称</div>
        <div>(大选项)：企业发展,经营风险,经营状况,知识产权</div>
    </div>
</div>
<div class="panel panel-info">
    <div class="panel-heading">企业背景</div>
    <div class="panel-body">
        <table class="table table-bordered table-striped">
            <tr><td class="td_l">法人信息</td><td>
                <%=Company.Model["OperName"] %>
                <div class="r_red">与其相关的其他公司信息,需要调多维查询接口</div>
                                          </td></tr>
            <tr><td>注册信息</td><td>
                <div><%=Company.Model["RegistCapi"] %></div>
                <div><%=ShowDate(Company.Model["TermStart"]) %></div>
                <div><%=Company.Model["Status"] %></div>
                             </td></tr>
            <tr><td>股权结构</td><td>
               <%for (int i = 0; i < stockDT.Rows.Count; i++)
                   {
                       DataRow dr = stockDT.Rows[i];
                    %>
                <div>
                    <span><%=dr["Name"] %> </span>
                    <span><%=dr["StockType"] %> </span>
                    <span><%=dr["SubConAmt"] %> </span>
                    <span><%=dr["FundedRatio"] %> </span>
                </div>
                <%} %>
                <div class="r_red">需要调公司股权结构接口</div>
                             </td></tr>
        </table>
        <div style="margin-top:5px;padding-top:5px; border-top:1px dashed #ddd;">
            <div>工商注册号：<%=Company.Model["No"] %></div>
<div>组织机构代码：<span class="r_red">为统一信用代码的后9位,793662919</span></div>
<div>
    统一信用代码：<%=Company.Model["CreditCode"] %>
</div>
<div>
    企业类型：<%=Company.Model["EconKind"] %>
</div>
<div>纳税人识别号：<span class="r_red">为统一信用代码除91后的数字,330108793662919</span></div>
<div>行业：<%=Company.Model["Industry"]["Industry"] %></div>
<div>
    营业期限：<%=ShowDate(Company.Model["TermStart"]) %>至
         <%=ShowDate(Company.Model["TeamEnd"]) %>
</div>
<div>核准日期：<%=ShowDate(Company.Model["CheckDate"])%></div>
<div>登记机关：<%=Company.Model["BelongOrg"] %></div>
<div>注册地址：<%=Company.Model["Address"] %></div>
<div>经营范围：<%=Company.Model["Scope"] %></div>
        </div>
        <div style="margin-top:5px;padding-top:5px;border-top:1px dashed #ddd;">
            <table class="table table-bordered table-striped">
                <tr><td colspan="4" class="text-center"><strong>变更记录</strong></td></tr>
                <tr><td class="td_m">变更时间</td><td class="td_l">变更项目</td><td>变更前</td><td>变更后</td></tr>
                <%for (int i = 0; i < changeDT.Rows.Count; i++)
                    {
                        DataRow dr = changeDT.Rows[i];
                    %>
                <tr>
                    <td><%=ShowDate(dr["ChangeDate"]) %></td>
                    <td><%=dr["ProjectName"] %></td>
                    <td><%=dr["BeforeContent"] %></td>
                    <td><%=dr["AfterContent"] %></td>
                </tr>
                <%} %>
            </table>
        </div>
    </div>
</div>
<div class="panel panel-primary">
    <div class="panel-heading">接口费用</div>
    <div class="panel-body">

    </div>
</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
</asp:Content>