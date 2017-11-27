﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebBanLinhKien.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideShowContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PromotionProductContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ADSContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="NewsContent" runat="server">
</asp:Content>
<asp:Content ID="loginContent" ContentPlaceHolderID="ProductContent" runat="server">
    <div class="breadcrumb">
        <div class="container">
            <ol class="list-unstyled list-inline">
                <li>
                    <a href="index.html" itemprop="item"><i class="fa fa-home"></i> <span>Trang chủ</span></a>
                </li>
                <li><span class="divide"><i class="fa fa-angle-right"></i></span></li>
                <li>
                    <span class="current" itemprop="item"><b>Đăng nhập tài khoản</b></span>
                </li>
            </ol>
        </div>
    </div><!-- End Breadcrumb -->
    <section class="AccountPage">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3 ">
                    <div class="formAccountPage" id="loginForm">
                        <h2 class="titleDecoration AccountPageTitle"><span class="line"></span><span class="title fz18"><i class="fa fa-lock"></i>&nbsp; Đăng nhập</span></h2>
                        <form accept-charset="UTF-8" action="#" id="customer_login" method="post">
                            <input name="FormType" type="hidden" value="customer_login">
                            <input name="utf8" type="hidden" value="true">
                            <div class="group">
                                <label for="username">Username <span class="error">*</span></label>
                                <%--<input type="text" name="username" id="username" required="" class="input-control">--%>
                                <asp:TextBox ID="username" CssClass="input-control" runat="server" />
                            </div>
                            <div class="group">
                                <label for="passLogin">Mật khẩu <span class="error">*</span></label>
                                <%--<input type="password" id="passLogin" name="password" required="" class="input-control">--%>
                                <asp:TextBox ID="passLogin" CssClass="input-control" runat="server" />
                            </div>
                            <div class="group clearfix mt-10">
                                <a href="#recover" class="left">Quên mật khẩu?</a>
                                <a href="#" class="right">Đăng ký tài khoản</a>
                            </div>
                            <%--<button class="button"><i class="hoverButton"></i>Đăng nhập</button>--%>
                            <asp:Button Text="Đăng nhập" ID="btnSend" CssClass="button" runat="server" />
                        </form>
                    </div>
                    <div class="formAccountPage" id="recoverForm" style="display:none">
                        <h2 class="titleDecoration AccountPageTitle"><span class="line"></span><span class="title fz18"><i class="fa fa-lock"></i>&nbsp; Lấy lại mật khẩu</span></h2>
                        <form accept-charset="UTF-8" action="#" id="recover_customer_password" method="post">
                            <input name="FormType" type="hidden" value="recover_customer_password">
                            <input name="utf8" type="hidden" value="true">
                            <p>Điền địa chỉ email bạn đã đăng ký vào ô bên dưới để chúng tôi xác nhận và gửi yêu cầu đổi mật khẩu cho bạn.</p>
                            <div class="group">
                                <label for="emailRecover">Email <span class="error">*</span></label>
                                <input type="email" name="mail" id="emailRecover" required="" class="input-control">
                            </div>
                            <div class="group clearfix" style="margin-top:15px">          
                                <a href="#" class="right">Quay lại</a>
                            </div>
                            <input type="submit" class="button" value="Gửi">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End AccountPage -->
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="BrandContent" runat="server">
</asp:Content>
