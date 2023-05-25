<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="DonHang.aspx.cs" Inherits="doanwebnangcao.DonHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <style>
       
         th 
        {
            width: 0px; 
            height: 0px; 
            border: none;
            margin: 0px; 
            padding: 0px;
        }
        tbody
        {
            display: flex; 
            width: 100%; 
           background-color:#ffffff;
           flex-wrap: wrap;
           flex-direction: column;
         border: none;

            
       
        

        }
        tr {
            display: flex;
           width: 100%; 
           justify-content: space-between;
           align-items: center;
           border: 1px solid #ccc;
         
        }
        td 
        {
           
          
         border: none;
        
             
        }
      
        table 
        {
          display:flex;
           width: 100%;
         border: none;

        }

         .box-content-input{
            width: 100%; 
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 7px 0px;
        }
       
       .box-insert-input{
           display: flex; 
           width: 230px; 
           height: 35px; 
           display: flex; 
           align-items:center; 
           border: 2px solid gray; 
           border-radius: 5px;
           transition: all 0.3s ease;
       }
       .box-insert-input:hover {
           box-shadow: 0px 0px 5px 2px gray;
       }
       .input-input-text{
           display: flex; 
           align-items: center;
           width: 100%;
           padding: 0px 5px;
           border: none;
           outline: none;
           color:  #444141;
             font-family: Comic Sans, Comic Sans MS, cursive;
       }
     
     
       .box-don-hang {
           display: flex;
           width: 100%;
       }

       .box-content-user-order {
           display: flex; 
           flex-direction: column; 
           width: 60%;
           padding: 0px 60px;
       }



       .text-info-order{
             font-family: Comic Sans, Comic Sans MS, cursive;
            font-size: 20px; 
            font-weight: 700;
             margin-bottom: 20px ;
       }
       .box-user-order{
           display:flex; 
           width: 100%;
           align-items: center;
          
       }
       .box-icon-user{
           display:flex; 
           width: 50px; 
           height: 50px; 
           justify-content: center; 
           align-items: center; 
           font-size : 20px;
           color: #ffffff;
           background-color: #ccc;
       }

       .box-info-user{
           display: flex; 
           padding: 0px 15px;
           font-size: 15px; 
           color: gray;
       }

       .text-full-name-user{
           margin-right: 5px ;
           
       }

       .text-email-user{

       }

       .box-input-content-order{
           display:flex; 
           width: 100%; 
           flex-direction: column;
            padding: 15px 0px;
       }

       .box-insert-input{
           width: 100%; 
           height: 50px;
           padding: 0px 10px;
       }

      .box-choose-buy{
          display: flex; 
          width: 100%; 
          flex-direction: column;
           border: 1px solid #ccc;
      }

      .box-convert-money{
          display: flex; 
          width: 100%; 
          flex-direction: column;
         
      }

      .box-item-convert-money.active {
          opacity: 1; 
            display: flex; 
          align-items: center; 
          padding: 18px; 
          border-bottom: 1px solid #ccc;
      }

      .box-item-convert-money{
          opacity: 0.6;
          display: flex; 
          align-items: center; 
          padding: 18px; 
          border-top: 1px solid #ccc;
          cursor: pointer;
      }

      .choose-click.active {
          width: 18px; 
          height: 18px; 
          border: 1px solid #ccc;
          background-color: red;
      }

      .choose-click{
          width: 18px; 
          height: 18px; 
          border: 1px solid #ccc; 

      }

      .img-order{
          width: 40px; 
          margin: 0px 10px;
      }

      .text-convert-money{
          color: gray;
      }

      .box-pane-info-shop{
          display: flex; 
          width: 100%; 
          flex-direction: column;
      }

      .box-pane-text-info.active{
         display: block;
          padding: 20px; 
          background-color: #fafafa;
          display: flex; 
          width: 100%; 
          flex-direction: column;
          align-items: center; 
      }

      .box-pane-text-info{
          padding: 20px; 
          background-color: #fafafa;
          display: flex; 
          width: 100%; 
          flex-direction: column;
          align-items: center; 

          display: none;
      }

      .text-info-banking{
          color: gray;
          font-size: 14px;
      }


       .box-cart-buy{
            display: flex; 
           flex-direction: column; 
           width: 40%;
       }

        .btn-order{
             background-color: #ddd; 
             font-size: 22px; 
             font-weight: 700; 
             color: #ffffff;
             padding: 7px 30px;
             border: 2px solid gray;
             transition: all 0.3s ease; 
            
         }
         .btn-order:hover {
             border-color: #ffffff;
             box-shadow: 0px 0px 7px 2px gray;
             background-color: red;
         }

         .box-btn-order-buy-click{
             margin: 20px 0px;
             display: flex; 
             width: 100%;
             align-items: center; 
             justify-content: center;
         }

             .product-item-adv-link:hover .img-product-change {
            animation: fadeIn 0.3s linear;
        }

           .img-product-default {
             width: 100%;
            animation: fadeIn 0.3s linear;

         }
       
    </style>
           <div class="content-pane active ">
               <div class="grid">
                <h1 style=" font-weight: 800; display:flex; justify-content: center;padding: 30px 0px 20px;   text-shadow: 5px 5px 5px gray; font-family: Comic Sans, Comic Sans MS, cursive;"> Đơn Hàng</h1>
             
               <div class="box-don-hang">

               <div class="box-content-user-order">
                   <span class="text-info-order"> Thông tin giao hàng</span>

                   <div class="box-user-order">
                       <div class="box-icon-user">
                      <i class="fa-solid fa-user"></i>
                           </div>
                       <div class=" box-info-user">
                           <span class="text-full-name-user"><%Response.Write(Session["FullName"]); %></span>
                           <span class="text-email-user">( <%Response.Write(Session["Email"]); %> )</span>
                       </div>
                   </div>

                   <div class="box-input-content-order">
                        <asp:Label ID="Label2" runat="server" Text="" style="font-size: 10px; color: red; padding-top: 2px;"></asp:Label>

                                        <div class="box-content-input">
                                            <div class="box-insert-input">
                                                <asp:TextBox class="input-input-text" ID="tbDiaChi" runat="server" placeHolder="Nhập địa chỉ..."></asp:TextBox>
                                            </div>
                                        </div>

                                       <div class="box-content-input">
                                            <div class="box-insert-input">
                                                <asp:TextBox class="input-input-text" ID="tbSoDienThoai" runat="server" placeHolder="Nhập số điện thoại..."></asp:TextBox>
                                            </div>
                                        </div>

                                    <div class="box-content-input">
                                            <div class="box-insert-input">
                                                <asp:TextBox class="input-input-text" ID="tbSoTaiKhoan" runat="server" placeHolder="Nhập số tài khoản..."></asp:TextBox>
                                            </div>
                                        </div>

                          <div class="box-content-input">
                                            <div class="box-insert-input">
                                                <asp:DropDownList ID="DropDownList1" class="input-input-text" runat="server">
                                                     <asp:ListItem>BIDV</asp:ListItem>
                                                     <asp:ListItem>VietinBank</asp:ListItem>
                                                     <asp:ListItem>Vietcombank</asp:ListItem>
                                                     <asp:ListItem>VPBank</asp:ListItem>
                                                     <asp:ListItem>MB</asp:ListItem>
                                                     <asp:ListItem>Techcombank</asp:ListItem>
                                                     <asp:ListItem>Agribank</asp:ListItem>
                                                     <asp:ListItem>ACB</asp:ListItem>
                                                     <asp:ListItem>Sacombank</asp:ListItem>
                                                     <asp:ListItem>VIB</asp:ListItem>
                                                     <asp:ListItem>MSB</asp:ListItem>


                                                </asp:DropDownList>
                                             
                                            </div>
                                        </div>
                   </div>

                     <span class="text-info-order"> Phương thức thanh toán</span>

                   <div class="box-choose-buy">
                       <div class ="box-convert-money">

                           <div class="box-item-convert-money active">
                               <span class="choose-click active"></span>
                               <img src="../img/icon-order.jpg" class="img-order" alt="Alternate Text" />
                               <span class="text-convert-money">1. Chuyển khoản đến Japan Figure</span>
                           </div>  

                             <div class="box-pane-text-info active">                       
                               <span class="text-info-banking">Chủ TK: Tạ Quang Đạt</span>
                               <span class="text-info-banking">Nội dung chuyển khoản: Mã Đơn Hàng của bạn.</span>
                               <span class="text-info-banking">1. Techcombank Số TK: 37 38 48 58 68 Chi nhánh: Hà Nội</span>
                               <span class="text-info-banking">2. VIB Số TK: 005181007 Chi nhánh VIB Gia Định</span>
                           </div>

                           <div class="box-item-convert-money">
                               <span class="choose-click"></span>
                               <img src="../img/icon-order.jpg" class="img-order" alt="Alternate Text" />
                               <span class="text-convert-money">2. Chuyển tiền đến ví điện tử</span>
                           </div>


                       </div>

                       <div class="box-pane-info-shop">

                         

                            <div class="box-pane-text-info">                       
                               <span class="text-info-banking">Momo / Zalo Pay / Viettel Money</span>
                               <span class="text-info-banking">SĐT: 0397972892</span>
                               <span class="text-info-banking">Người nhận: Nguyễn Hữu Hùng</span>
                               <span class="text-info-banking">Nội dung chuyển khoản: Mã Đơn Hàng của bạn.</span>
                           </div>

                       </div>

                   </div>

                   <div class="box-btn-order-buy-click">
                   <asp:Button ID="Button1" class="btn-order" runat="server" Text="Thanh Toán" OnClick="Button1_Click" />
                       </div>

               </div>
               
               
               
               <div class="box-cart-buy">
               <div style="   border: 3px solid #ccc; "  >
                  <asp:GridView  ID="gvGH"   AutoGenerateColumns="false" runat="server" 
                   EnableViewState="false" DataKeyNames="MaGioHang"  RepeatDirection="Horizontal"   > 
             <Columns>

                 
                 <asp:TemplateField >
                    <ItemTemplate>
                        <div  style="width: 100%; display: flex;  ">
                        <a  href="#" class="product-item-adv-link" style="width: 100px ;height: 100px;" >
                                   <div class="box-img-change-order"   style="width: 100px ;height: 100px;  ">
                                       
                                       <asp:Image ID="Image6" runat="server" class="img-product-default" ImageUrl='<%#"~/img/"+Eval("Anh1") %>' style="height: 100px; width: 100px;" />
                                        
                                       <asp:Image ID="Image7" runat="server" class="img-product-change" ImageUrl='<%#"~/img/"+Eval("Anh2") %>'   style="height: 100px;width: 100px;"/>
                                   </div>
                            </a>
                                   <div class="product-item-content-cart" style="margin-left: 5px; display:flex; flex-direction: column; justify-content: center; width: 70%">
    
                                    <div class="product-item-content-title" style="font-size: 14px; font-weight: 700; text-shadow: 0px 0px 3px gray; font-family: Comic Sans, Comic Sans MS, cursive;"><%#Eval("TenSanPham") %></div>
                                    <div class="product-item-content-cost" style="font-size: 13px; font-weight: 700;  color: red; font-family: Comic Sans, Comic Sans MS, cursive;"><%#Eval("ThanhTien", "{0:N0}") %>₫</div>
                                    <div class=""  style="font-size: 13px; font-weight: 700;  color: gray; font-family: Comic Sans, Comic Sans MS, cursive;">Số lượng: <%#Eval("SoLuong") %></div>

                                    
                                   </div>

                                
                            </div>

                    
                   
                      
                    </ItemTemplate>
                   
                </asp:TemplateField> 

            
             </Columns>
                    
        </asp:GridView>
                   </div>

               <div style=" display: flex; justify-content: flex-end; font-family: Comic Sans, Comic Sans MS, cursive; padding: 15px 40px; font-size: 20px; font-weight: 700;">
                   <span style="padding: 0px 10px;"> Tổng tiền:</span> <span style="color: red; text-shadow: 0px 0px 3px gray; "> <asp:Label ID="Label1" runat="server" Text="" style="margin-right: 3px; letter-spacing: 2px;"></asp:Label>đ</span>
               </div>

                   </div>

                   </div>
         
                </div>
           </div>
     <script src="../js/buy-order.js"></script>
</asp:Content>
