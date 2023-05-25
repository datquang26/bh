<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="doanwebnangcao.product" %>
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
           background-color:transparent;
           flex-wrap: wrap;
            
         border: none;
        

        }
        tr {
            display: flex;
            flex-direction:column;
          border:none;
        }
        td 
        {
            display:flex;
           
           border:none;
             
        }
      
        table 
        {
          border:none;
          background-color: transparent;
           
        }

        .input_delete{
            font-size: 13px; 
            font-weight: 700;
             background: linear-gradient( 90deg, red, blue);
             color: #ffffff;
             border-color: #ffffff;
             border-radius: 4px;
             box-shadow: 0px 0px 3px 1px gray;
             transition: all 0.3s ease;
            margin-left: 1140px; 
            position: relative;
            top: -43px;
        }
         .input_delete:hover {
             background: linear-gradient( 90deg, blue, red);
             box-shadow:  0px 0px 5px 2px gray;


         }

         .choose-product-img {
    width: 20px;
    height: 10px;
    opacity: 0.5;
    border-radius: 10px;
    background-color: blue;
    margin: 0px 5px;
    border: 1px solid #fff;
     transition: all 0.3s  linear;
}


          .choose-product-img.active {
        opacity: 1;
        box-shadow: 0px 0px 2px 1px #fff;
        width: 25px;
       
    }

          .product-detail-img-main {
    display: none;
    width: 100%;
   
  
}

    .product-detail-img-main.active {
        display: block;
        width: 100%;
      animation: fadeIn 0.3s linear;
    }
    

    .product-detail-list-img {
    width: 66px;
    height: 93px;
    margin: 5px 0px;
    opacity: 0.6;
     transition: all 0.3s  linear;
     cursor: pointer;
}

    .product-detail-list-img.active {
        opacity: 1;
        box-shadow: 0px 0px 2px 1px #000;
    }


       .product-item-adv-link:hover .box-img-change {
            animation: fadeIn 0.3s linear;
        }

           .img-product-default {
             width: 100%;
            animation: fadeIn 0.3s linear;

}

    
        
    </style>
      <div class="content-pane active ">
            <div class="box-pane-product-detail">
               <div class="grid">
                       <asp:GridView  ID="gvSP"   AutoGenerateColumns="false" runat="server" 
                   EnableViewState="false" DataKeyNames="MaSanPham"  RepeatDirection="Horizontal"  > 
             <Columns>

                 
                 <asp:TemplateField >
                    <ItemTemplate>
                        
                           <div class="box-product-detail">
                    <div class="box-product-detail-img">
                     <div class="box-product-detail-list-img" >
                         <asp:Image ID="Image1" runat="server" alt="" class="product-detail-list-img active" ImageUrl='<%#"~/img/"+Eval("Anh1") %>' />
                         <asp:Image ID="Image2" runat="server" alt="" class="product-detail-list-img" ImageUrl='<%#"~/img/"+Eval("Anh2") %>'/>
                         <asp:Image ID="Image3" runat="server" alt="" class="product-detail-list-img" ImageUrl='<%#"~/img/"+Eval("Anh3") %>'/>
                         <asp:Image ID="Image4" runat="server" alt="" class="product-detail-list-img" ImageUrl='<%#"~/img/"+Eval("Anh4") %>'/>
                         <asp:Image ID="Image5" runat="server" alt="" class="product-detail-list-img" ImageUrl='<%#"~/img/"+Eval("Anh5") %>'/>
                         <asp:Image ID="Image6" runat="server" alt="" class="product-detail-list-img" ImageUrl='<%#"~/img/"+Eval("Anh6") %>'/>
                 <!--
                       <img src="../img/product-figma-5.jpg" alt="" class="product-detail-list-img active">
                       <img src="../img/product-figma-5-1.jpg" alt="" class="product-detail-list-img">
                       <img src="../img/product-figma-5-2.jpg" alt="" class="product-detail-list-img">
                       <img src="../img/product-figma-5-3.jpg" alt="" class="product-detail-list-img">
                       <img src="../img/product-figma-5-4.jpg" alt="" class="product-detail-list-img">
                       <img src="../img/product-figma-5-5.jpg" alt="" class="product-detail-list-img">
                         -->
                     </div>
                     <div class="box-product-detail-img-main " style="overflow:hidden" >
                         <asp:Image ID="Image7" runat="server" alt="" class="product-detail-img-main active" ImageUrl='<%#"~/img/"+Eval("Anh1") %>' />
                         <asp:Image ID="Image8" runat="server" alt="" class="product-detail-img-main" ImageUrl='<%#"~/img/"+Eval("Anh2") %>' />
                         <asp:Image ID="Image9" runat="server" alt="" class="product-detail-img-main" ImageUrl='<%#"~/img/"+Eval("Anh3") %>' />
                         <asp:Image ID="Image10" runat="server" alt="" class="product-detail-img-main" ImageUrl='<%#"~/img/"+Eval("Anh4") %>' />
                         <asp:Image ID="Image11" runat="server" alt="" class="product-detail-img-main" ImageUrl='<%#"~/img/"+Eval("Anh5") %>' />
                         <asp:Image ID="Image12" runat="server" alt="" class="product-detail-img-main" ImageUrl='<%#"~/img/"+Eval("Anh6") %>' />

                       <!--
                        <img src="../img/product-figma-5.jpg" alt="" class="product-detail-img-main active">
                        <img src="../img/product-figma-5-1.jpg" alt="" class="product-detail-img-main">
                        <img src="../img/product-figma-5-2.jpg" alt="" class="product-detail-img-main">
                        <img src="../img/product-figma-5-3.jpg" alt="" class="product-detail-img-main">
                        <img src="../img/product-figma-5-4.jpg" alt="" class="product-detail-img-main">
                        <img src="../img/product-figma-5-5.jpg" alt="" class="product-detail-img-main">
                       -->
                            <div class="box-choose-img-product">
                                <span class="choose-product-img active"></span>
                                <span class="choose-product-img"></span>
                                <span class="choose-product-img"></span>
                                <span class="choose-product-img"></span>
                                <span class="choose-product-img"></span>
                                <span class="choose-product-img"></span>
                            </div>
                     </div>
                    </div>
                    <div class="box-product-detail-content" >
                        <span class="title-product-detail"> <%#Eval("TenSanPham") %></span>
                        <span class="cost-product-detail"><%#Eval("GiaTien", "{0:N0}") %>₫</span>
                      

                        <div class="box-service-product-detail">
                            <div class="box-content-service-product">
                                <i class="fa-solid fa-envelope icon-service"></i>
                                 <div class="box-para-product-service">
                                    
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Sản phẩm chính hãng từ Nhật Bản.
                                        </span>
                                        <br>
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Trước khi bạn đặt mua:
                                        </span>
                                        <span class="text-product-service">vui lòng check lại giá hiện tại với admin, vì khả năng giá đã thay đổi so với lần cập nhật gần nhất, hoặc hết hàng, hết suất order. Do giới hạn số lượng, figure Nhật sẽ hiếm dần theo thời gian, dẫn tới giá tăng.</span>
                                 </div>
                            </div>

                            <div class="box-content-service-product">
                                <i class="fa-solid fa-truck-fast icon-service"></i>
                                 <div class="box-para-product-service">
                                    
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Với sản phẩm CÓ SẴN, bạn sẽ được giao ngay.
                                        </span>
                                        <br>
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Với sản phẩm ĐẶT TRƯỚC, bạn cần cọc 50% giá trị sản phẩm. 
                                        </span>
                                        <span class="text-product-service"> Hàng về VN khoảng 2-3 tuần sau khi phát hành. Lịch phát hành dự kiến như thông tin chi tiết bên dưới.</span>
                                 </div>
                            </div>
                            
                            <div class="box-content-service-product">
                                <i class="fa-solid fa-phone-volume  icon-service"></i>
                                 <div class="box-para-product-service">
                                    
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Giao hàng tận nơi
                                        </span>
                                        <br>
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Miễn phí ship với các đơn hàng >1000K
                                        </span>
                                        <br>
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Vui lòng kiểm tra sản phẩm khi nhận bưu kiện
                                        </span>
                                       
                                 </div>
                            </div>

                        </div>

                        <div class="box-information-product-detail">
                            <span class="text-information-product-detail">THÔNG TIN SẢN PHẨM</span>
                            <span class="cost-update-product-detail">Giá cập nhật tháng   <%# Convert.ToDateTime(Eval("PhatHanh")).ToString("dd/MM/yyyy") %>: <%#Eval("GiaTien", "{0:N0}") %>đ</span>
                            <span class="text-char-product-detail">Nhân vật: <%#Eval("NhanVat") %></span>
                            <span class="text-char-product-detail">Series:  <%#Eval("Series") %></span>

                            <span class="text-char-product-detail">Hãng sản xuất:  <%#Eval("HangSanXuat") %></span>
                            <span class="text-char-product-detail">Kích thước: <%#Eval("KichThuoc") %>cm </span>
                            <span class="text-char-product-detail">Phát hành:  <%# Convert.ToDateTime(Eval("PhatHanh")).ToString("dd/MM/yyyy") %></span>



                        </div>
                        

                    </div>
                </div>

                    
                   
                      
                    </ItemTemplate>
                   
                </asp:TemplateField> 
                 
         
             </Columns>
                    
        </asp:GridView>
                     <div class="box-add-cart-product-detail">
                            <div class="box-input-number-product">
                                <span class="text-input-number-product">So luong :</span>
                               
                             <asp:TextBox ID="TextBox2" TextMode="Number"  runat="server" class="input-number-product" ></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="" style="font-size: 10px; color: red; padding-top: 2px; padding-left: 3px;"></asp:Label>

                                <%--<input type="text" class="input-number-product">--%>
                            </div>

                            <asp:Button ID="Button2" runat="server" Text="THEM VAO GIO" class="btn-add-cart-product-detail" OnClick="Button2_Click" />
                            <%--<button class="btn-add-cart-product-detail">THEM VAO GIO</button>--%>
                        </div>
                      
          <!--      <div class="box-product-detail">
                    <div class="box-product-detail-img">
                     <div class="box-product-detail-list-img">
                       <img src="../img/product-figma-5.jpg" alt="" class="product-detail-list-img active">
                       <img src="../img/product-figma-5-1.jpg" alt="" class="product-detail-list-img">
                       <img src="../img/product-figma-5-2.jpg" alt="" class="product-detail-list-img">
                       <img src="../img/product-figma-5-3.jpg" alt="" class="product-detail-list-img">
                       <img src="../img/product-figma-5-4.jpg" alt="" class="product-detail-list-img">
                       <img src="../img/product-figma-5-5.jpg" alt="" class="product-detail-list-img">

                     </div>
                     <div class="box-product-detail-img-main ">
                        <img src="../img/product-figma-5.jpg" alt="" class="product-detail-img-main active">
                        <img src="../img/product-figma-5-1.jpg" alt="" class="product-detail-img-main">
                        <img src="../img/product-figma-5-2.jpg" alt="" class="product-detail-img-main">
                        <img src="../img/product-figma-5-3.jpg" alt="" class="product-detail-img-main">
                        <img src="../img/product-figma-5-4.jpg" alt="" class="product-detail-img-main">
                        <img src="../img/product-figma-5-5.jpg" alt="" class="product-detail-img-main">
                            <div class="box-choose-img-product">
                                <span class="choose-product-img active"></span>
                                <span class="choose-product-img"></span>
                                <span class="choose-product-img"></span>
                                <span class="choose-product-img"></span>
                                <span class="choose-product-img"></span>
                                <span class="choose-product-img"></span>
                            </div>
                     </div>
                    </div>
                    <div class="box-product-detail-content">
                        <span class="title-product-detail">S.H.Figuarts Naruto Uzumaki -No.1 Most Unpredictable Hyperactive Ninja- "NARUTO"</span>
                        <span class="cost-product-detail">1,350,000₫</span>
                        <div class="box-add-cart-product-detail">
                            <div class="box-input-number-product">
                                <span class="text-input-number-product">So luong :</span>
                                <input type="text" class="input-number-product">
                            </div>
                            <button class="btn-add-cart-product-detail">THEM VAO GIO</button>
                        </div>

                        <div class="box-service-product-detail">
                            <div class="box-content-service-product">
                                <i class="fa-solid fa-envelope icon-service"></i>
                                 <div class="box-para-product-service">
                                    
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Sản phẩm chính hãng từ Nhật Bản.
                                        </span>
                                        <br>
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Trước khi bạn đặt mua:
                                        </span>
                                        <span class="text-product-service">vui lòng check lại giá hiện tại với admin, vì khả năng giá đã thay đổi so với lần cập nhật gần nhất, hoặc hết hàng, hết suất order. Do giới hạn số lượng, figure Nhật sẽ hiếm dần theo thời gian, dẫn tới giá tăng.</span>
                                 </div>
                            </div>

                            <div class="box-content-service-product">
                                <i class="fa-solid fa-truck-fast icon-service"></i>
                                 <div class="box-para-product-service">
                                    
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Với sản phẩm CÓ SẴN, bạn sẽ được giao ngay.
                                        </span>
                                        <br>
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Với sản phẩm ĐẶT TRƯỚC, bạn cần cọc 50% giá trị sản phẩm. 
                                        </span>
                                        <span class="text-product-service"> Hàng về VN khoảng 2-3 tuần sau khi phát hành. Lịch phát hành dự kiến như thông tin chi tiết bên dưới.</span>
                                 </div>
                            </div>
                            
                            <div class="box-content-service-product">
                                <i class="fa-solid fa-phone-volume  icon-service"></i>
                                 <div class="box-para-product-service">
                                    
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Giao hàng tận nơi
                                        </span>
                                        <br>
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Miễn phí ship với các đơn hàng >1000K
                                        </span>
                                        <br>
                                        <span class="text-product-service-bold">
                                            <i class="fa-solid fa-check"></i> Vui lòng kiểm tra sản phẩm khi nhận bưu kiện
                                        </span>
                                       
                                 </div>
                            </div>

                        </div>

                        <div class="box-information-product-detail">
                            <span class="text-information-product-detail">THÔNG TIN SẢN PHẨM</span>
                            <span class="cost-update-product-detail">Giá cập nhật tháng 1/2023: 1.350.000đ</span>
                            <span class="text-char-product-detail">Nhân vật: Naruto Uzumaki</span>
                            <span class="text-char-product-detail">Series: NARUTO</span>

                            <span class="text-char-product-detail">Hãng sản xuất: Bandai Spirits</span>
                            <span class="text-char-product-detail">Kích thước: 13.5cm </span>
                            <span class="text-char-product-detail">Phát hành: 5/2023</span>



                        </div>
                        

                    </div>
                </div>     -->

                 
               </div>
            </div>
            


            <div class="box-product-referent">
               <div class="grid">
                <div class="title-product-referent"> Sản Phẩm Liên Quan</div>
                <div class="box-all-product-referent" style="padding: 0px !important ; margin: 0px !important;  ">

                    <%foreach (var item in doanwebnangcao.dao.DaoSanPham.getAllSanPhamByrandom())
                        {
                         %>
                       
                           <div style="width: 192px !important ; height: 351px; padding: 4px 15px;  ">
                                <a  href="/product.aspx?productID=<%=item.MaSanPham%>" class="product-item-adv-link" style="width: 170px;">
                                   <div class="box-img-change">
                                       <img src='img/<%= item.Anh1 %>' alt="Alternate Text" class="img-product-default" />

                                         <img src='img/<%= item.Anh2 %>' alt="Alternate Text" class="img-product-change" />

                                      <%-- <asp:Image ID="Image6" runat="server" class="img-product-default" ImageUrl='<%#"~/img/"+Eval("Anh1") %>' />
                                        
                                       <asp:Image ID="Image7" runat="server" class="img-product-change" ImageUrl='<%#"~/img/"+Eval("Anh2") %>' />--%>
                                   </div>
                                   <div class="product-item-content-adv">
                                    <div class="product-item-content-title"><%=item.TenSanPham%></div>
                                    <div class="product-item-content-cost"><%=item.GiaTien.ToString("N0")%>₫</div>
                                    <button  class="product-item-content-buy">
                                        <i class="fa-solid fa-bag-shopping icon-buy"></i>
                                    </button>
                                   </div>

                                </a>
                           </div>

                      
                  
                  <% } %>


                 

                

                  

                  
                </div>
               </div>
            </div>
          


            <div class="box-comment-product" >

                <div class="grid">

                     <div class="box-comment-product-detail">
                         <div class="box-comment-css" style=" display: flex; width: 100%;  flex-direction: column; margin-bottom : 30px;">
                        <div class="box-user-comment" style="display: flex; align-items: flex-start; margin-bottom: 30px;">
                          <div class="name-user-comment" style=" background: linear-gradient(135deg, #00DBDE 0%, #FC00FF 100%);  box-shadow : 0px 0px 5px 2px #ccc"><%Response.Write(Session["FullName"]); %></div>
                      <!--    <input type="text" class="input-user-comment">  -->
                            <div style="display:flex; width: 100%; flex-direction: column; padding: 0px 15px 0px 15px;">
                            <asp:TextBox ID="TextBox1" runat="server"  class="input-user-comment" style="background-color: transparent; width: 100%; padding: 0px; margin: 0px;" placeholder="Nhập comment ...."  ></asp:TextBox>
                                 <asp:Label ID="Label1" runat="server" Text="" style="font-size: 10px; color: red; margin: 3px 0px 0px 0px; "></asp:Label>
                                <asp:FileUpload ID="FileUpload1" runat="server" style="width: 82px; margin: 5px 0px;" />
                                
                            </div>
                       <!--   <button class="btn-user-comment">Send</button>  -->
                            <asp:Button ID="Button1" runat="server" Text="Send" class="btn-user-comment" OnClick="Button1_Click" />
                        </div>
                          
                             <div style="border-top: 1px solid #ddd; width: 100% " >
                             <div class="text-comment-box" style="display: flex; width: 130px; padding: 5px 0px; align-items: center; justify-content: center; border-top : 3px solid  gray; box-shadow: 0px 0px 3px 0px gray; font-size: 14px; font-weight: 700; font-family: Comic Sans, Comic Sans MS, cursive;"> Comment</div>
                                  <asp:Label ID="Label3" runat="server" Text="" style="font-size: 10px; color: red; margin: 3px 0px 0px 0px; "></asp:Label>
                             </div>
                         </div>
                         <asp:GridView  ID="gvUC"   AutoGenerateColumns="false" runat="server" 
                   EnableViewState="false" DataKeyNames="MaComment"  RepeatDirection="Horizontal"  OnRowDeleting="gvUC_RowDeleting" > 
             <Columns>

                 
                 <asp:TemplateField >
                    <ItemTemplate>
                         
                       
                        <div class="box-display-comment-user" style="width: 100%; display: flex; flex-wrap: wrap; padding: 0px 0px 0px 15px; align-items: flex-start" >
                            <div class="name-user-comment" style=" background: linear-gradient(135deg, #FFFFFF 0%, #6284FF 50%, #FF0000 100%);box-shadow : 0px 0px 5px 1px #ccc" > <%#Eval("FullName") %></div>
                            <div style="display:flex; flex-direction: column; width: 1020px; padding: 0px 15px;">
                            <span class="text-user-comment" style="width: 100%; border-bottom: 1px dotted #ddd; padding: 0px;"> <%#Eval("Textcomment") %></span>
                                <asp:Image ID="Image13" runat="server" ImageUrl='<%#"~/img/"+Eval("Anh1") %>' alt="không chọn ảnh"   style="width: 150px ;  margin-top: 5px; font-size: 10px;" /> 
                             </div>
                        </div>
                       
                       
                      
                  

                        
                   
                      
                    </ItemTemplate>
                   
                </asp:TemplateField> 
                 
                 
                 <asp:CommandField ControlStyle-CssClass="input_delete" ShowDeleteButton="True" ButtonType="Button"   />
         
             </Columns>
                    
        </asp:GridView>

                      </div>
                    <!--
                    <div class="box-comment-product-detail">
                        <div class="box-user-comment">
                          <div class="name-user-comment">Hung</div>
                          <input type="text" class="input-user-comment">
                          <button class="btn-user-comment">Send</button>
                        </div>
                        <div class="box-display-comment-user">
                            <div class="name-user-comment">Hung Day</div>

                            <span class="text-user-comment">dmm con cho nay () <)===8 </span>

                        </div>
                    </div>
                    -->
                </div>
            </div>
      
           </div>
</asp:Content>
