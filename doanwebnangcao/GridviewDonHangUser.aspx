<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="GridviewDonHangUser.aspx.cs" Inherits="doanwebnangcao.GridviewDonHangUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content-pane active ">
                    <div class="box-manage">
                        <div class="grid">
                            <div class="box-manage-banner-all">
                                <span class="title-banner-all">Danh Sách Đơn Hàng</span>
                                <div class="box-gridview-banner-all">
                                    <asp:GridView  ID="gvDH"  PageSize="3"  AutoGenerateColumns="false" runat="server" Width="100%" CellPadding="4" 
                   EnableViewState="false" DataKeyNames="MaDonHang" ForeColor="#000000" BackColor="#f5f5f5" BorderColor="gray" GridLines="Both"  AllowPaging="true" OnPageIndexChanging="gvDH_PageIndexChanging" OnRowEditing="gvDH_RowEditing"      > 
             <Columns>
                    <asp:TemplateField HeaderText="MaDonHang" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                   
                          <%#Eval("MaDonHang") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"   />
                </asp:TemplateField>
                 
                  <asp:TemplateField HeaderText="ID" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                   
                          <%#Eval("ID") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"   />
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="DiaChi" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                   
                          <%#Eval("DiaChi") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"   />
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="SoDienThoai" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                   
                          <%#Eval("SoDienThoai") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"   />
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="FullName" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                   
                          <%#Eval("FullName") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"   />
                </asp:TemplateField>

                      <asp:TemplateField HeaderText="SoTaiKhoan" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                   
                          <%#Eval("SoTaiKhoan") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"   />
                </asp:TemplateField>

                    <asp:TemplateField HeaderText="NganHang" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                   
                          <%#Eval("NganHang") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"   />
                </asp:TemplateField>


                   <asp:TemplateField HeaderText="TongTien" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                   
                          <%#Eval("TongTien") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"   />
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="VanChuyen" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                   
                          <%#Eval("VanChuyen") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"   />
                </asp:TemplateField>

              

              
             
                       <asp:CommandField EditText="Xem" ControlStyle-CssClass="input_edit" ShowEditButton="true" ButtonType="Button" HeaderText="Thao tác" HeaderStyle-HorizontalAlign="Left"  />
                 
             </Columns>
                    <PagerSettings Mode ="NumericFirstLast" PageButtonCount="10"/>
                    <PagerStyle CssClass="pagecss" />
        </asp:GridView>
                                    </div>
                            </div>

                        </div>
                    </div>
               </div>
</asp:Content>
