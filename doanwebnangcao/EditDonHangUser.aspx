<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="EditDonHangUser.aspx.cs" Inherits="doanwebnangcao.EditDonHangUser" %>
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
           width: 55%;
           padding: 45px 60px 0px;
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
           width: 45%;
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
             margin: 10px 0px ;
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
                                                <asp:TextBox class="input-input-text" style="width: 100%;" ID="tbDiaChi" runat="server" placeHolder="Nhập địa chỉ..."></asp:TextBox>
                                            </div>
                                        </div>

                                       <div class="box-content-input">
                                            <div class="box-insert-input">
                                                <asp:TextBox class="input-input-text" style="width: 100%;" ID="tbSoDienThoai" runat="server" placeHolder="Nhập số điện thoại..."></asp:TextBox>
                                            </div>
                                        </div>

                                 

                       

                   </div>

                      <div class="box-btn-order-buy-click">
                   <asp:Button ID="Button2" class="btn-order" runat="server" Text="Cập nhật" OnClick="Button2_Click"  />
                       </div>
                   
                 

               </div>
               
               
               
               <div class="box-cart-buy" >
                    <span class="text-info-order"> Thông tin giao hàng</span>
                   <div class="box-order-text" style=" width: 100%; border: 5px dashed #000; padding: 20px 20px; border-radius: 10px; display: flex; flex-direction: column; margin: 0px 0px 20px; font-size: 18px;  " >
                       <div class="box-content-order" style="display: flex; font-weight: bold; padding: 5px 0px;">
                          + Mã đơn hàng : <asp:Label ID="Label1" style="padding-left: 5px; text-shadow: 2px 2px 3px gray; " runat="server"> </asp:Label>
                       </div>
                        <div class="box-content-order" style="display: flex; font-weight: bold; padding: 5px 0px;">
                          + Địa chỉ : <asp:Label ID="Label3" style="padding-left: 5px; text-shadow: 2px 2px 3px gray;" runat="server"> </asp:Label>
                       </div>
                        <div class="box-content-order" style="display: flex; font-weight: bold;padding: 5px 0px;">
                          + Số điện thoại : <asp:Label ID="Label4" style="padding-left: 5px; text-shadow: 2px 2px 3px gray;" runat="server"> </asp:Label>
                       </div>
                        <div class="box-content-order" style="display: flex; font-weight: bold;padding: 5px 0px;">
                          + Số tài khoản : <asp:Label ID="Label5" style="padding-left: 5px; text-shadow: 2px 2px 3px gray;" runat="server"> </asp:Label>
                       </div>
                        <div class="box-content-order" style="display: flex; font-weight: bold;padding: 5px 0px;">
                          + Ngân hàng : <asp:Label ID="Label6" style="padding-left: 5px; text-shadow: 2px 2px 3px gray;" runat="server"> </asp:Label>
                       </div>
                        <div class="box-content-order" style="display: flex; font-weight: bold;padding: 5px 0px;">
                          + Tổng tiền : <asp:Label ID="Label7" style="padding-left: 5px; text-shadow: 2px 2px 3px yellow; color: red;" runat="server"></asp:Label><span style="color: red; margin-left: 2px; text-shadow: 2px 2px 3px yellow;">đ</span>
                       </div>
                   </div>
                  

                    <div class="box-btn-order-buy-click">
                   <asp:Button ID="Button3" class="btn-order" runat="server" Text="Hủy Đơn" OnClick="Button3_Click"  />
                       </div>

                        <div class="box-btn-order-buy-click">
                   <asp:Button ID="Button1" class="btn-order" runat="server" Text="Đã Nhận Hàng" OnClick="Button1_Click"  />
                       </div>
                

                   </div>

                   </div>
                          
         
                </div>
           </div>
</asp:Content>
