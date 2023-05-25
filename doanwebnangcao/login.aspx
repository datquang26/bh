<%@ Page Title="" Language="C#" MasterPageFile="~/login-register-main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="doanwebnangcao.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

             <div class="main2">
                <div action="" method="POST" class="form" id="form-2">
                    <h3 class="heading" style="text-align: center;">ĐĂNG NHẬP TÀI KHOẢN</h3>
                        <asp:Label ID="Label3" runat="server" Text="" style="font-size: 10px; color: red; padding-top: 2px; padding-left: 3px;"></asp:Label>
                        
                    <div class="form-group" style="display: flex; justify-content: space-around">
                      
                      <%--<input id="email" name="email" type="text" placeholder="Email" class="form-control">--%>
                        <asp:TextBox ID="tbEmail" runat="server" placeholder="Email *" class="form-control"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="" style="font-size: 10px; color: red; padding-top: 2px; padding-left: 3px;"></asp:Label>

                      <span class="form-message"></span>
                    </div>
                
                    <div class="form-group">
                      
                       <asp:TextBox ID="tbMatKhau" runat="server" TextMode="Password" placeholder="Mat khau *" class="form-control"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="" style="font-size: 10px; color: red; padding-top: 2px; padding-left: 3px;"></asp:Label>
                      <span class="form-message"></span>
                    </div>
                
                          <div class="form-this">This site is protected by reCAPTCHA and the Google
                               <a href="google.com">Privacy Policy</a> and 
                               <a href="google.com">Terms of Service </a> apply.
                          </div>
                    <asp:Button ID="Button1" runat="server" class="form-submit" Text="Đăng nhập" OnClick="Button1_Click" />
                    <%--<button class="form-submit">Đăng nhập</button>--%>
                    <div class="form-this" style="padding-top: 20px;">Khách hàng mới?
                        <a href="../Register.aspx" style="color: #ED1C24;">Tạo tài khoản</a>
                    </div>
                  </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>
       
</asp:Content>
