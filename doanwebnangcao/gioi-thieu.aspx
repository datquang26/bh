<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="gioi-thieu.aspx.cs" Inherits="doanwebnangcao.gioi_thieu" %>
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
           width: 100%;
           border:none;
             
        }
      
        table 
        {
          border:none;
           
        }

    
        

       
    </style>

       <div class="content-pane active ">
            <h2 style="font-size: 13px; margin-left: 115px; text-align: none; ">
                <a href="" style="color: black;">Trang chủ</a> /
                <a href="" style="color: #777777;">Giới thiệu về Japan Figure</a>
            </h2>
            <div class="grid">
                <div class="box-title-product-parade">
                    <span class="title-product-parade">Giới thiệu về Japan Figure</span>
                </div>
                    <asp:GridView  ID="gvGT"   AutoGenerateColumns="false" runat="server" 
                   EnableViewState="false" DataKeyNames="MaGioiThieu"  RepeatDirection="Horizontal"  > 
             <Columns>

                 
                 <asp:TemplateField >
                    <ItemTemplate>
                        
                           <div class="container" >
                    <div class="row">
                        <div class="col-8 p-0">
                            <asp:Image ID="Image1" runat="server" class="img-fluid" ImageUrl='<%#"~/img/"+Eval("IntroBannerImg") %>' />
                          
                         <!--   <img class="img-fluid" src="../img/gioithieu-1.jpg" alt="">   -->
                        </div>
                        <div class="col-4">
                            <div class="col-12">
                            <ul class="list-group">
                                <li class="list-group-item d-flex justify-content-between align-items-center" style="font-weight: 700;">
                                  Danh mục
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                  Tìm kiếm
                                </li>
                                <li class="list-group-item d-flex justify-content-between ">
                                  Giới thiệu
                                </li>
                              </ul>
                            </div>


                                <div class="col-12">
                            <div class="footer-middle-box-img rounded mx-auto d-block pt-3">
                                <img src="../img/gioithieu-2.jpg" alt="" class="footer-middle-img rounded float-right">
                            </div>

                            
                        </div>
                        </div>
                </div>
                <div class="row">
                    <div class="col-8 p-0" style="color: rgb(153, 51, 102); font-size: 14px; ">
                        <strong >► Figure là gì ?</strong>
                    </div>
                    <div class="col-4" > 
                      
                    </div>
                    <div class="col-8 p-0 pb-5">
                        <p style="text-align: justify; font-size: 14px;">
                            Là&nbsp;mô hình, là tượng, là bất kỳ&nbsp;cách gọi nào liên quan đến những tạo tác 3D cầm nắm được trên tay,&nbsp;mô phỏng lại nhân vật trong bức vẽ, phim,&nbsp;truyện, game...
                            <br>
                            Thông thường figure mang hình dạng con người, đôi khi là động vật, thực vật, quái vật, yêu tinh,&nbsp;thần thánh, thậm chí là sinh vật ngoài tinh...nhân vật nào&nbsp;được điêu khắc thành 3D thì được gọi chung là figure.
                        </p>
                    </div>
                    <div class="col-4"> 
                       
                    </div>
                </div>
                <div class="row">
                    <div class="col-8 p-0" style="height: 400px;">
                        <iframe width="100%" height="100%" src=" <%#Eval("IntroVideo") %>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        <em style="font-size: 14px; margin-left: 170px;"><%#Eval("TextIntroVideo") %></em>
                      
                    </div>
                    <div class="col-4"> </div>
                
                
                    <div class="col-8" style="margin-top: 100px;">
                   <!--     <img class="rounded mx-auto d-block" src="../img/gioithieu-3.jpg" alt="">   -->
                        <asp:Image ID="Image2" runat="server" class="rounded mx-auto d-block" ImageUrl='<%#"~/img/"+Eval("AnhGT1") %>'/>
                    </div>
                    <div class="col-4"></div>
                </div>

                <div class="row">
                    <div class="col-12 p-0 " style="color: rgb(153, 51, 102); font-size: 14px; margin-top: 70px;">
                        <strong>► Japan Figure là gì ?</strong>
                    </div>
                    <div class="col-8 p-0 ">
                        <ol class="pb-5">
                            <li style="text-align: justify; font-size: 14px; ">Là những figure được các họa sĩ Nhật Bản sáng tạo, vẽ minh họa, điêu khắc và hoàn thiện thiết kế đầu tiên - prototype tại Nhật Bản. </li>
                            <li style="text-align: justify; font-size: 14px; ">Sau đó phần lớn thiết kế này được gửi đi sản xuất hàng loạt tại Trung Quốc. Nên sản phẩm cuối cùng bạn cầm trên tay có chữ “Made in China” là chuyện rất bình thường.</li>
                            <li style="text-align: justify; font-size: 14px;">Vì xuất xứ từ Nhật nên hiển nhiên Japan figure mang đậm văn hóa Nhật từ Anime, Manga, Game, Light novel, J-pop cho đến ca sĩ ảo, streamer ảo v…v…</li>
                        </ol>
                    </div>
                    <div class="col-4"></div>
                </div>

                <div class="row">
                    <div class="col-8 pb-2" >
                      <!--  <img class="rounded mx-auto d-block" src="../img/gioithieu-4.jpg" alt="">    -->
                        <asp:Image ID="Image3" runat="server" class="rounded mx-auto d-block" ImageUrl='<%#"~/img/"+Eval("JapanFigureImg") %>'  />
                    </div>
                    <div class="col-4"></div>

                     <div class="col-8 pb-2" >
                     <!--   <img class="rounded mx-auto d-block" src="../img/gioithieu-4.jpg" alt="">   -->
                         <asp:Image ID="Image4" runat="server" class="rounded mx-auto d-block" ImageUrl='<%#"~/img/"+Eval("JapanFigureImg2") %>'/>
                    </div>
                    <div class="col-4"></div>

                     <div class="col-8 pb-2" >
                    <!--    <img class="rounded mx-auto d-block" src="../img/gioithieu-4.jpg" alt="">   -->
                         <asp:Image ID="Image5" runat="server" class="rounded mx-auto d-block" ImageUrl='<%#"~/img/"+Eval("JapanFigureImg3") %>' />
                    </div>
                    <div class="col-4"></div>

                    
                    <div class="col-8 pt-3">

                        <em style="font-size: 14px; margin-left: 170px;"> <%#Eval("JapanFigureText") %></em>
                    </div>
                    <div class="col-4"></div>
                </div>
                <div class="row ">
                    <div class="col-9 mt-5">
                        <p style="font-size: 14px;">Với công nghệ của Nhật và quy trình sản xuất được giám sát nghiêm ngặt, những sản phẩm figure được hoàn thành rất có hồn của nhân vật gốc, chi tiết sắc bén, màu sắc sống động, đóng gói hỉnh chu.</p>
                        <p style="font-size: 14px;">Nhờ đó, figure Nhật Bản đã làm mãn lòng fan hâm mộ trên toàn thế giới.</p>
                    </div>
                    <div class="col-3"></div>
                    <div class="col-9">
                        <code style="font-size: 21.6px; color: #C7254E; font-weight: 700;font-family: Comic Sans, Comic Sans MS, cursive; background-color: antiquewhite;">Tới đây hẳn bạn đang thắc mắc:</code> <br>
                        <code style="font-size: 21.6px; color: #C7254E; font-weight: 700;font-family: Comic Sans, Comic Sans MS, cursive; background-color: antiquewhite;">"Làm thế nào để phân biệt được hàng Nhật và hàng nhái từ Trung Quốc?”</code>
                    </div>
                    <div class="col-3"></div>
                    <div class="col-9 pt-2">
                        <p style="font-size: 14px;">Yên tâm nhé Japan Figure đã chuẩn bị sẵn cho bạn 1 số mẹo phân biệt cực ký hữu ích.
                        <br> <a href="" style="font-weight: 600; color: #3333FF; text-decoration: none;">click vào đây để tìm hiểu.</a>
                        </p>
                    </div>
                    <div class="col-3"></div>
                </div>
                <div class="row">
                    <div class="col-6" style="color: rgb(153, 51, 102); font-size: 14px; ">
                       
                            <strong >►Mục tiêu của Japan Figure là:</strong>
                            <img src="../img/gioithieu-7.jpg" alt="">
                    </div>
                    <div class="col-6">
                       <span style="font-size: 14px; color: #252A2B; font-weight: 700; text-decoration: underline; ">Có thể bạn quan tâm:</span> <br>
                       
                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500; ">
                        <span class="">#Hàng có sẵn</span>
                       </a> </br>

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Hàng order</span>
                       </a> <br>

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Artbook</span>
                       </a> </br >

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Hàng đã bán</span>
                       </a> <br>

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Thông tin liên hệ</span>
                       </a> </br >

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Youtube Channel</span>
                       </a>

                    </div>
                    
                </div>
                </div>
                        
                    
                   
                      
                    </ItemTemplate>
                   
                </asp:TemplateField> 
                 
         
             </Columns>
                    
        </asp:GridView>
           <!--     <div class="container" >
                    <div class="row">
                        <div class="col-8 p-0">
                            <img class="img-fluid" src="../img/gioithieu-1.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <div class="col-12">
                            <ul class="list-group">
                                <li class="list-group-item d-flex justify-content-between align-items-center" style="font-weight: 700;">
                                  Danh mục
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                  Tìm kiếm
                                </li>
                                <li class="list-group-item d-flex justify-content-between ">
                                  Giới thiệu
                                </li>
                              </ul>
                            </div>


                                <div class="col-12">
                            <div class="footer-middle-box-img rounded mx-auto d-block pt-3">
                                <img src="../img/gioithieu-2.jpg" alt="" class="footer-middle-img rounded float-right">
                            </div>

                            
                        </div>
                        </div>
                </div>
                <div class="row">
                    <div class="col-8 p-0" style="color: rgb(153, 51, 102); font-size: 14px; ">
                        <strong >► Figure là gì ?</strong>
                    </div>
                    <div class="col-4" > 
                      
                    </div>
                    <div class="col-8 p-0 pb-5">
                        <p style="text-align: justify; font-size: 14px;">
                            Là&nbsp;mô hình, là tượng, là bất kỳ&nbsp;cách gọi nào liên quan đến những tạo tác 3D cầm nắm được trên tay,&nbsp;mô phỏng lại nhân vật trong bức vẽ, phim,&nbsp;truyện, game...
                            <br>
                            Thông thường figure mang hình dạng con người, đôi khi là động vật, thực vật, quái vật, yêu tinh,&nbsp;thần thánh, thậm chí là sinh vật ngoài tinh...nhân vật nào&nbsp;được điêu khắc thành 3D thì được gọi chung là figure.
                        </p>
                    </div>
                    <div class="col-4"> 
                       
                    </div>
                </div>
                <div class="row">
                    <div class="col-8 p-0" style="height: 400px;">
                        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/nlVl7uilHwc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        <em style="font-size: 14px; margin-left: 170px;">Góc trưng bày figure Nhật Bản của vợ chồng bạn Hà MY 9X tại Hà Nội</em>
                      
                    </div>
                    <div class="col-4"> </div>
                
                
                    <div class="col-8" style="margin-top: 100px;">
                        <img class="rounded mx-auto d-block" src="../img/gioithieu-3.jpg" alt="">
                    </div>
                    <div class="col-4"></div>
                </div>

                <div class="row">
                    <div class="col-12 p-0 " style="color: rgb(153, 51, 102); font-size: 14px; margin-top: 70px;">
                        <strong>► Japan Figure là gì ?</strong>
                    </div>
                    <div class="col-8 p-0 ">
                        <ol class="pb-5">
                            <li style="text-align: justify; font-size: 14px; ">Là những figure được các họa sĩ Nhật Bản sáng tạo, vẽ minh họa, điêu khắc và hoàn thiện thiết kế đầu tiên - prototype tại Nhật Bản. </li>
                            <li style="text-align: justify; font-size: 14px; ">Sau đó phần lớn thiết kế này được gửi đi sản xuất hàng loạt tại Trung Quốc. Nên sản phẩm cuối cùng bạn cầm trên tay có chữ “Made in China” là chuyện rất bình thường.</li>
                            <li style="text-align: justify; font-size: 14px;">Vì xuất xứ từ Nhật nên hiển nhiên Japan figure mang đậm văn hóa Nhật từ Anime, Manga, Game, Light novel, J-pop cho đến ca sĩ ảo, streamer ảo v…v…</li>
                        </ol>
                    </div>
                    <div class="col-4"></div>
                </div>

                <div class="row">
                    <div class="col-8 pb-2" >
                        <img class="rounded mx-auto d-block" src="../img/gioithieu-4.jpg" alt="">
                    </div>
                    <div class="col-4"></div>

                    
                    <div class="col-8 pt-3">
                        <em style="font-size: 14px; margin-left: 170px;">Cách chơi figure với sa bàn. Ảnh của tác giả : Exkurogane</em>
                    </div>
                    <div class="col-4"></div>
                </div>
                <div class="row ">
                    <div class="col-9 mt-5">
                        <p style="font-size: 14px;">Với công nghệ của Nhật và quy trình sản xuất được giám sát nghiêm ngặt, những sản phẩm figure được hoàn thành rất có hồn của nhân vật gốc, chi tiết sắc bén, màu sắc sống động, đóng gói hỉnh chu.</p>
                        <p style="font-size: 14px;">Nhờ đó, figure Nhật Bản đã làm mãn lòng fan hâm mộ trên toàn thế giới.</p>
                    </div>
                    <div class="col-3"></div>
                    <div class="col-9">
                        <code style="font-size: 21.6px; color: #C7254E; font-weight: 700;font-family: Comic Sans, Comic Sans MS, cursive; background-color: antiquewhite;">Tới đây hẳn bạn đang thắc mắc:</code> <br>
                        <code style="font-size: 21.6px; color: #C7254E; font-weight: 700;font-family: Comic Sans, Comic Sans MS, cursive; background-color: antiquewhite;">"Làm thế nào để phân biệt được hàng Nhật và hàng nhái từ Trung Quốc?”</code>
                    </div>
                    <div class="col-3"></div>
                    <div class="col-9 pt-2">
                        <p style="font-size: 14px;">Yên tâm nhé Japan Figure đã chuẩn bị sẵn cho bạn 1 số mẹo phân biệt cực ký hữu ích.
                        <br> <a href="" style="font-weight: 600; color: #3333FF; text-decoration: none;">click vào đây để tìm hiểu.</a>
                        </p>
                    </div>
                    <div class="col-3"></div>
                </div>
                <div class="row">
                    <div class="col-6" style="color: rgb(153, 51, 102); font-size: 14px; ">
                       
                            <strong >►Mục tiêu của Japan Figure là:</strong>
                            <img src="../img/gioithieu-7.jpg" alt="">
                    </div>
                    <div class="col-6">
                       <span style="font-size: 14px; color: #252A2B; font-weight: 700; text-decoration: underline; ">Có thể bạn quan tâm:</span> <br>
                       
                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500; ">
                        <span class="">#Hàng có sẵn</span>
                       </a> </br>

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Hàng order</span>
                       </a> <br>

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Artbook</span>
                       </a> </br >

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Hàng đã bán</span>
                       </a> <br>

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Thông tin liên hệ</span>
                       </a> </br >

                       <a href="" style="color:#3333FF; text-decoration: none; font-weight: 500;">
                        <span>#Youtube Channel</span>
                       </a>

                    </div>
                    
                </div>
                </div>           -->
                
            </div>
            
           </div>

     <style>
           html {
               position: relative;
           }

             html .box-adv-adv{
            position: absolute; 
            background-color: rgba(0, 0, 0, 0.1); 
          display: flex;
          
            z-index: 100000;
            top: 0; 
            right : 0; 
            
            bottom: 0;
           
          
        }

      

        .box-adv-node{
            position: fixed;
            top: 250px; 
            right: 0px;
            display:flex; 
            height: 230px;
           z-index: 10000;
            box-shadow: 0px 0px 5px 2px gray;
            border: 1px solid #fff;
        }

      



          .content-adv {
           height: 100%; 
          display: none;
          width: 228px;
       }

        .content-adv.active {
           height: 100%; 
         display: block;
          width: 228px;
       }
            

        .content-kick{
            display: flex; 
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100%;
            width: 26px;
          
           
        }
        .link-img-adv-node{
            overflow: hidden;
            
        }
        .img-adv-node{
            transition: transform 1s ease;
        }
          .img-adv-node:hover{
            transform: scale(1.1);
         }


    </style>

    <div class="box-adv-adv ">
    <div class="box-adv-node">

          <div class="content-kick">
            <div class="box-xmark-icon" style="width: 100%; border: 1px solid gray; text-shadow: 0px 0px 10px gray; background-color: #fff; height: 100%; color: red;  display: flex; align-items: center ; justify-content: center;">
            <i class="fa-solid fa-computer-mouse"></i>

            </div>

        </div>

        <div class="content-adv ">
            <a href="https://www.google.com.vn/?hl=vi" class="link-img-adv-node" style="display: flex; height: 100%; width: 100%;">
            <img src="../img/img-sale3.jpg" alt="Alternate Text" class="img-adv-node " style="height: 100%; width: 100%; " />
            </a>
        </div>

      
    </div>
    </div>

    <script>
        const $ = document.querySelector.bind(document);
        const $$ = document.querySelectorAll.bind(document);

       

        const contadv = $$(".content-adv");
        const boxkickicon = $$(".box-xmark-icon");
        const contkick2 = $$(".box-adv-adv");




        boxkickicon.forEach((tab, index) => {
            

            tab.onclick = function () {
                
                $(".content-adv").classList.toggle("active");

                

            };
        });


        setTimeout(() => {

            $(".content-adv").classList.add("active");

        }, 5000)
       





       



    </script>



</asp:Content>
