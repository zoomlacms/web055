<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Law.aspx.cs" Inherits="ZoomLaCMS.FX.Law" MasterPageFile="~/Common/Master/Empty.master" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<div class="panel panel-info">
    <div class="panel-heading">开庭公告</div>
    <div class="paanel-body">
        <asp:Repeater runat="server" ID="CourtNotice_RPT">
            <ItemTemplate>
                <div class="item">
                    <div>
                        <span>法院：<%#Eval("Executegov") %></span>
                        <span>(案号：<%#Eval("CaseNo") %>)</span>
                        <span>(内部ID：<%#Eval("Id") %>)</span>
                    </div>
                    <div>
                        <span>原告：<%#Eval("Prosecutorlist") %></span>
                        <span>被告：<%#Eval("Defendantlist") %></span>
                    </div>
                    <div>
                        <%#Eval("CaseReason") %>
                    </div>
                    <div class="pull-right">
                        <%#Eval("LianDate") %>
                    </div>
                    <div class="clearfix"></div>
                    <div>
                        <a href="LawInfo.aspx?ID=<%#Eval("ID") %>&Type=CourtNotice" class="btn btn-info">查看详情</a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<div class="panel panel-info">
    <div class="panel-heading">法院公告</div>
    <div class="panel-body">
        <asp:Repeater runat="server" ID="CourtAnnouncent_RPT">
            <ItemTemplate>
                <div class="item">
                    <div>
                        <span>执行法院：<%#Eval("Court") %></span>
                        <span>(种类：<%#Eval("Category") %>)</span>
                        
                    </div>
                  <div>
                      <%#Eval("Content") %>
                  </div>
                 <div>
                     <span>公司名/当事人：<%#Eval("Party") %></span>
                     <span>公布日期：<%#Eval("PublishedDate") %></span>
                     <span>公布/页：<%#Eval("PublishedPage") %></span>
                 </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<div class="panel panel-info">
        <div class="panel-heading">裁判文书</div>
        <div class="panel-body">
            <asp:Repeater runat="server" ID="JudgmentDoc_RPT">
                <ItemTemplate>
                    <div class="item">
                        <div>
                            <span>执行法院：<%#Eval("Court") %></span>
                        </div>
                        <div>
                            <span>裁判文书名字：<%#Eval("CaseName") %></span>
                            <span>裁判文书编号：<%#Eval("CaseNo") %></span>
                            <span>裁判文书类型：<%#Eval("CaseType") %></span>
                        </div>
                        <div>
                            <span>提交时间：<%#Eval("SubmitDate") %></span>
                            <span>修改时间：<%#Eval("UpdateDate") %></span>
                            <span>是否原告：<%#Eval("IsProsecutor") %></span>
                            <span>是否被告：<%#Eval("IsDefendant") %></span>
                        </div>
                    </div>
                    <div>
                        <a href="LawInfo.aspx?ID=<%#Eval("ID") %>&Type=JudgmentDoc" class="btn btn-info">查看详情</a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
<div class="panel panel-info">
    <div class="panel-heading">失信信息</div>
    <div class="panel-body">
        <asp:Repeater runat="server" ID="ShiXin_RPT">
            <ItemTemplate>
                <div class="item">
                    <div>
                        <span>被执行人姓名/名称：<%#Eval("Name") %></span>
                        <span>立案时间：<%#Eval("Liandate") %></span>
                         <span>案号：<%#Eval("Anno") %></span>
                         <span>身份证号码/组织机构代码：<%#Eval("Orgno") %></span>
                    </div>
                    <div>
                        <span>法定代表人或者负责人姓名：<%#Eval("Ownername") %></span>
                        <span>执行法院：<%#Eval("Executegov") %></span>
                        <span>所在省份缩写：<%#Eval("Province") %></span>
                        <span>做出执行依据单位：<%#Eval("Executeunite") %></span>
                    </div>
                    <div>
                        <span>生效法律文书确定的义务：<%#Eval("Yiwu") %></span>
                        <span>被执行人的履行情况：<%#Eval("Executestatus") %></span>
                        <span>失信被执行人行为具体情形：<%#Eval("Actionremark") %></span>
                        <span>发布时间：<%#Eval("Publicdate") %></span>
                    </div>
                    <div>
                         <span>年龄：<%#Eval("Age") %></span>
                         <span>性别：<%#Eval("Sexy") %></span>
                         <span>记录更新时间：<%#Eval("Updatedate") %></span>
                         <span>执行依据文号：<%#Eval("Executeno") %></span>
                    </div>
                    <div>
                        <span>已履行：<%#Eval("Performedpart") %></span>
                        <span>未履行：<%#Eval("Unperformpart") %></span>
                        <span>组织类型（1：自然人，2：企业，3：社会组织，空白：无法判定）：<%#Eval("OrgType") %></span>
                        <span>组织类型名称：<%#Eval("OrgTypeName") %></span>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<div class="panel panel-info">
    <div class="panel-heading">失信被执行信息</div>
    <div class="panel-body">
        <asp:Repeater runat="server" ID="ZhiXing_RPT">
            <ItemTemplate>
                <div class="item">
                    <div>
                         <span>执行法院：<%#Eval("ExecuteGov") %></span>
                    </div>
                    <div>
                        <span>名称：<%#Eval("Name") %></span>
                        <span>立案时间：<%#Eval("Liandate") %></span>
                        <span>立案号：<%#Eval("Anno") %></span>
                    </div>
                    <div>
                        <span>标地：<%#Eval("Biaodi") %></span>
                        <span>状态：<%#Eval("Status") %></span>
                        <span>身份证号码/组织机构代码：<%#Eval("PartyCardNum") %></span>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
<style type="text/css">
.item{margin-bottom:5px;padding-bottom:5px;margin-top:5px;border-bottom:1px dashed #ddd;}
</style>
</asp:Content>