﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="WebBanLinhKien.Admin.Users" MasterPageFile="~/Admin/Admin.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="row">
        <div class="col-md-12">
            <div class="table-users">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <strong>Danh sách thành viên</strong>
                        <div class="pull-right">
                        <a href="Users.aspx?action=add" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Thêm thành viên</a>
                            
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-body">
                        <asp:PlaceHolder runat="server" ID="tableContent" />
                        <%--<div class="row">
                            <div class="col-md-6 pull-left">
                                <ul class="pagination pull-left" style="margin:0;">
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                </ul>
                            </div>
                        </div>--%>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
