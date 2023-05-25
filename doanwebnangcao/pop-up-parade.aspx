<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="pop-up-parade.aspx.cs" Inherits="doanwebnangcao.pop_up_parade" %>
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

        
        .btn-view-all{
            margin-right: -20px;
            display: flex;
    height: 38px;
    width: 75px;
    align-items: center;
    justify-content: center;
    font-size: 14px;
    font-weight: 700;
    background-color: #fff;
    border: 1px solid #ccc;
   transition: all 0.3s ease;
        }

         .btn-view-all:hover {
             background-color: red; 
             color: #fff; 
             border-color: #fff;
             box-shadow: 0px 0px 3px 0px gray;
         }


       
    </style>
      <div class=" pop content-pane active ">
              <div class="content-pane-pop-up-parade">

                    <asp:GridView  ID="gvBA"   AutoGenerateColumns="false" runat="server" 
                   EnableViewState="false" DataKeyNames="MaBanner"  RepeatDirection="Horizontal"  > 
             <Columns>

                 
                 <asp:TemplateField >
                    <ItemTemplate>
                        
                         <div class="img-banner-parade" style="width: 1347px; height: 362px;background-image: url('<%#"../img/"+Eval("AnhBanner") %>')" >
                    <div class="box-title-banner-parade">
                        <span class="title-parade"><%#Eval("TenBanner") %></span>
                        <span class="text-banner-parade"><%#Eval("MoTaBanner") %></span>
                    </div>
               </div>
                   
                      
                    </ItemTemplate>
                   
                </asp:TemplateField> 
                 
         
             </Columns>
                    
        </asp:GridView>
                  <!--
                <div class="img-banner-parade">
                    <div class="box-title-banner-parade">
                        <span class="title-parade">Pop Up Parade</span>
                        <span class="text-banner-parade">Ti le chuan, kich thuoc nho, gia tieu hoc</span>
                    </div>
               </div>
                  -->

               <div class="content-product-parade" ">
               <div class="grid">

                   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>

                              <div class="box-title-product-parade">
                    <span class="title-product-parade">Pop Up Parade</span>
                      <div class="box-input pop" style="width: 567px; margin: 0px; position: relative; top: -513px; left: 3px; z-index: 2000; ">
                        <%--<input type="text" class="input-text">

                        <div class="search">
                            <i class="fa-solid fa-magnifying-glass icon-search"></i>
                        </div>--%>
                           <asp:TextBox ID="TextBox1" class="input-text"  runat="server"></asp:TextBox>

                        <div class="search">
                            <asp:Button ID="Button1" runat="server" Text="" style="width: 100%; height:100%; border: none; background-color: transparent; z-index: 1;"  OnClick="Button1_Click" />
                            <i class="fa-solid fa-magnifying-glass icon-search" style="position: relative; left: -17px;"></i>
                        </div>
                     </div>

                        <asp:Button ID="Button2" runat="server" Text=" View all" OnClick="Button2_Click" class="btn-view-all"  />
                     <asp:DropDownList ID="DropDownList1" class="select-parade"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >

                    </asp:DropDownList>
                    <!--
                    <select class="select-parade" name="" id="">
                        <option value="1">naruto</option>
                        <option value="2">onepiece</option>
                        <option value="3">kimetsu</option>
                    </select>
                    -->
                </div>
                
                <div class="box-item-product-parade">
                      <asp:GridView  ID="gvSP"   AutoGenerateColumns="false" runat="server" 
                   EnableViewState="false" DataKeyNames="MaSanPham"  RepeatDirection="Horizontal"  > 
             <Columns>

                 
                 <asp:TemplateField >
                    <ItemTemplate>
                         <div style=" width: 298px ;  height: 537px; padding: 0px 10px ; margin-bottom: 20px;  ">
                        <a href="/product.aspx?productID=<%#Eval("MaSanPham") %>" class="product-item-adv-link-parade">
                            <div class="box-img-change-parade">
                                 <asp:Image ID="Image3"  runat="server" ImageUrl='<%#"~/img/"+Eval("Anh1") %>'  class="img-product-default-parade" />        
                                     <asp:Image ID="Image4" runat="server"  ImageUrl='<%#"~/img/"+Eval("Anh2") %>' class="img-product-change-parade" />
                               
                            </div>
                            <div class="product-item-content-adv-parade">
                             <div class="product-item-content-title-parade"><%#Eval("TenSanPham") %></div>
                             <div class="product-item-content-cost-parade"><%#Eval("GiaTien", "{0:N0}") %>₫</div>
                             <button  class="product-item-content-buy-parade">
                                 <i class="fa-solid fa-bag-shopping icon-buy"></i>
                             </button>
                            </div>

                         </a>
                             </div>
                   
                      
                    </ItemTemplate>
                   
                </asp:TemplateField> 
                 
         
             </Columns>
                    
        </asp:GridView>
     <!--
                    <div class="grid__column-4">
                        <a href="" class="product-item-adv-link-parade">
                            <div class="box-img-change-parade">
                                 <img src="../img/product-item-2.jpg" alt="" class="img-product-default-parade">
                                 <img src="../img/product-item2-1.jpg" alt="" class="img-product-change-parade">
                            </div>
                            <div class="product-item-content-adv-parade">
                             <div class="product-item-content-title-parade">Atelier Ryza: Ever Darkness & the Secret Hideout Ryza "Atelier" Series 25th Anniversary ver. 1/7 Regular Edition</div>
                             <div class="product-item-content-cost-parade">6,400,000₫</div>
                             <button  class="product-item-content-buy-parade">
                                 <i class="fa-solid fa-bag-shopping icon-buy"></i>
                             </button>
                            </div>

                         </a>
                    </div>

                    <div class="grid__column-4">
                        <a href="" class="product-item-adv-link-parade">
                            <div class="box-img-change-parade">
                                 <img src="../img/product-item-3.jpg" alt="" class="img-product-default-parade">
                                 <img src="../img/product-item-3-1.jpg" alt="" class="img-product-change-parade">
                            </div>
                            <div class="product-item-content-adv-parade">
                             <div class="product-item-content-title-parade">Atelier Ryza: Ever Darkness & the Secret Hideout Ryza "Atelier" Series 25th Anniversary ver. 1/7 Regular Edition</div>
                             <div class="product-item-content-cost-parade">6,400,000₫</div>
                             <button  class="product-item-content-buy-parade">
                                 <i class="fa-solid fa-bag-shopping icon-buy"></i>
                             </button>
                            </div>

                         </a>
                    </div>

                    <div class="grid__column-4">
                        <a href="" class="product-item-adv-link-parade">
                            <div class="box-img-change-parade">
                                 <img src="../img/product-item-1.jpg" alt="" class="img-product-default-parade">
                                 <img src="../img/product-item1-1.jpg" alt="" class="img-product-change-parade">
                            </div>
                            <div class="product-item-content-adv-parade">
                             <div class="product-item-content-title-parade">Atelier Ryza: Ever Darkness & the Secret Hideout Ryza "Atelier" Series 25th Anniversary ver. 1/7 Regular Edition</div>
                             <div class="product-item-content-cost-parade">6,400,000₫</div>
                             <button  class="product-item-content-buy-parade">
                                 <i class="fa-solid fa-bag-shopping icon-buy"></i>
                             </button>
                            </div>

                         </a>
                    </div>

                    <div class="grid__column-4">
                        <a href="" class="product-item-adv-link-parade">
                            <div class="box-img-change-parade">
                                 <img src="../img/product-item-1.jpg" alt="" class="img-product-default-parade">
                                 <img src="../img/product-item1-1.jpg" alt="" class="img-product-change-parade">
                            </div>
                            <div class="product-item-content-adv-parade">
                             <div class="product-item-content-title-parade">Atelier Ryza: Ever Darkness & the Secret Hideout Ryza "Atelier" Series 25th Anniversary ver. 1/7 Regular Edition</div>
                             <div class="product-item-content-cost-parade">6,400,000₫</div>
                             <button  class="product-item-content-buy-parade">
                                 <i class="fa-solid fa-bag-shopping icon-buy"></i>
                             </button>
                            </div>

                         </a>
                    </div>

                    <div class="grid__column-4">
                        <a href="" class="product-item-adv-link-parade">
                            <div class="box-img-change-parade">
                                 <img src="../img/product-item-1.jpg" alt="" class="img-product-default-parade">
                                 <img src="../img/product-item1-1.jpg" alt="" class="img-product-change-parade">
                            </div>
                            <div class="product-item-content-adv-parade">
                             <div class="product-item-content-title-parade">Atelier Ryza: Ever Darkness & the Secret Hideout Ryza "Atelier" Series 25th Anniversary ver. 1/7 Regular Edition</div>
                             <div class="product-item-content-cost-parade">6,400,000₫</div>
                             <button  class="product-item-content-buy-parade">
                                 <i class="fa-solid fa-bag-shopping icon-buy"></i>
                             </button>
                            </div>

                         </a>
                    </div>

                    <div class="grid__column-4">
                        <a href="" class="product-item-adv-link-parade">
                            <div class="box-img-change-parade">
                                 <img src="../img/product-item-1.jpg" alt="" class="img-product-default-parade">
                                 <img src="../img/product-item1-1.jpg" alt="" class="img-product-change-parade">
                            </div>
                            <div class="product-item-content-adv-parade">
                             <div class="product-item-content-title-parade">Atelier Ryza: Ever Darkness & the Secret Hideout Ryza "Atelier" Series 25th Anniversary ver. 1/7 Regular Edition</div>
                             <div class="product-item-content-cost-parade">6,400,000₫</div>
                             <button  class="product-item-content-buy-parade">
                                 <i class="fa-solid fa-bag-shopping icon-buy"></i>
                             </button>
                            </div>

                         </a>
                    </div>

                    <div class="grid__column-4">
                        <a href="" class="product-item-adv-link-parade">
                            <div class="box-img-change-parade">
                                 <img src="../img/product-item-1.jpg" alt="" class="img-product-default-parade">
                                 <img src="../img/product-item1-1.jpg" alt="" class="img-product-change-parade">
                            </div>
                            <div class="product-item-content-adv-parade">
                             <div class="product-item-content-title-parade">Atelier Ryza: Ever Darkness & the Secret Hideout Ryza "Atelier" Series 25th Anniversary ver. 1/7 Regular Edition</div>
                             <div class="product-item-content-cost-parade">6,400,000₫</div>
                             <button  class="product-item-content-buy-parade">
                                 <i class="fa-solid fa-bag-shopping icon-buy"></i>
                             </button>
                            </div>

                         </a>
                    </div>
                -->

                </div>


                       </ContentTemplate>
                   </asp:UpdatePanel>

             

               </div>
               </div>

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
            left : 0; 
            
            bottom: 0;
           
          
        }

      

        .box-adv-node{
            position: fixed;
            top: 250px; 
            left: 0px;
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

        <div class="content-adv ">
            <a href="https://accounts.binance.com" class="link-img-adv-node" style="display: flex; height: 100%; width: 100%;">
            <img src="../img/img-adv-node2.jpg" alt="Alternate Text" class="img-adv-node " style="height: 100%; width: 100%; " />
            </a>
        </div>

        <div class="content-kick">
            <div class="box-xmark-icon" style="width: 100%; border: 1px solid gray; text-shadow: 0px 0px 10px gray; background-color: #fff; height: 100%; color: red;  display: flex; align-items: center ; justify-content: center;">
            <i class="fa-solid fa-computer-mouse"></i>

            </div>

            

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
