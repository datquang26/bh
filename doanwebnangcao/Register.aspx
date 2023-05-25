<%@ Page Title="" Language="C#" MasterPageFile="~/login-register-main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="doanwebnangcao.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
              <div class="main2">
                

                <div action="" method="POST" class="form" id="form-3">
                    <h3 class="heading" style="text-align: center;">TẠO TÀI KHOẢN</h3>
                        
                   
                  
                    <div class="form-group">
                       <asp:TextBox ID="tbFullName" runat="server" placeholder="Tên của bạn *" class="form-control"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="" style="font-size: 10px; color: red; padding-top: 2px; padding-left: 3px;"></asp:Label>

                      <%--<input id="fullname" name="fullname" type="text" placeholder="Tên của bạn" class="form-control">--%>
                      <span class="form-message"></span>
                    </div>
                
                    <div class="form-group">
                       <asp:TextBox ID="tbEmail" runat="server" placeholder="Email *" class="form-control"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="" style="font-size: 10px; color: red; padding-top: 2px; padding-left: 3px;"></asp:Label>

                      <%--<input id="email" name="email" type="text" placeholder="Email của bạn" class="form-control">--%>
                      <span class="form-message"></span>
                    </div>
                
                    <div class="form-group">
                      <asp:TextBox ID="tbMatKhau" runat="server" placeholder="Mật khẩu *" class="form-control"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="" style="font-size: 10px; color: red; padding-top: 2px; padding-left: 3px;"></asp:Label>

                      <%--<input id="matkhau" name="matkhau" type="password" placeholder="Mật khẩu" class="form-control">--%>
                      <span class="form-message"></span>
                    </div>

                      <div class="form-group">
                      <asp:TextBox ID="tbReMatKhau" runat="server" placeholder="Nhập lại mật khẩu *" class="form-control"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="" style="font-size: 10px; color: red; padding-top: 2px; padding-left: 3px;"></asp:Label>

                      <%--<input id="matkhau" name="matkhau" type="password" placeholder="Mật khẩu" class="form-control">--%>
                      <span class="form-message"></span>
                    </div>
                
                   
  
                          <div class="form-this">This site is protected by reCAPTCHA and the Google
                               <a href="google.com">Privacy Policy</a> and 
                               <a href="google.com">Terms of Service </a> apply.</div>
  
                    <asp:Button ID="Button1" runat="server" Text="Đăng Ký"  class="form-submit" OnClick="Button1_Click"/>
                    <%--<button class="form-submit">Đăng Ký</button>--%>

                    <div class="form-this" style="padding-top: 20px;">
                        <a href="../homepage.aspx" style="color: #ED1C24; text-decoration: none; font-weight: 500;">
                            <i class="fa fa-long-arrow-left"></i>
                            Quay lại trang chủ
                        </a>
                    </div>
                  </div>


            </div>


        </ContentTemplate>

    </asp:UpdatePanel>
      
</asp:Content>
