﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="Products1.aspx.cs" Inherits="MyFirstWeb.pages.Products1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


          <section id="test" class="features">

 <div id="catagory" runat="server" style="display:flex;" class="catagory" >

     <div>
     <div class="card">
        <div class="im">
            <a href="#">
                <img class="img" src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D" alt="Alternate Text" />
              </a>
           <div class="save">
                 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 683 683" height="683" width="683" class="svg">
                 <g clip-path="url(#clip0_993_25)">
               <mask height="683" width="683" y="0" x="0" maskUnits="userSpaceOnUse" style="mask-type:luminance" id="mask">
              <path fill="white" d="M0 -0.00012207H682.667V682.667H0V-0.00012207Z"></path>
          </mask>
             <g mask="url(#mask0_993_25)">
                <path stroke-linejoin="round" stroke-linecap="round" stroke-miterlimit="10" stroke-width="40" stroke="#CED8DE" d="M148.535 19.9999C137.179 19.9999 126.256 24.5092 118.223 32.5532C110.188 40.5866 105.689 51.4799 105.689 62.8439V633.382C105.689 649.556 118.757 662.667 134.931 662.667H135.039C143.715 662.667 151.961 659.218 158.067 653.09C186.451 624.728 270.212 540.966 304.809 506.434C314.449 496.741 327.623 491.289 341.335 491.289C355.045 491.289 368.22 496.741 377.859 506.434C412.563 541.074 496.752 625.242 524.816 653.348C530.813 659.314 538.845 662.667 547.308 662.667C563.697 662.667 576.979 649.395 576.979 633.019V62.8439C576.979 51.4799 572.48 40.5866 564.447 32.5532C556.412 24.5092 545.489 19.9999 534.133 19.9999H148.535Z"></path>
              </g>
           </g>


           <defs>
              <clipPath id="clip0_993_25">
               <rect fill="white" height="682.667" width="682.667"></rect>
              </clipPath>
           </defs>

          </svg>
        </div>
      </div>

      <div class="text">
        <p class="h3">Your product title</p>
        <p class="p">Description</p> 

        <div class="icon-box">
          <p class="span">Add To Cart</p>
        </div>

      </div>
    </div>
       
       
       </div>
       





     <div>

     <div class="card">
        <div class="im">
           <img class="img" src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D" alt="Alternate Text" />
              <div class="save">
                 <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 683 683" height="683" width="683" class="svg">
                 <g clip-path="url(#clip0_993_25)">
               <mask height="683" width="683" y="0" x="0" maskUnits="userSpaceOnUse" style="mask-type:luminance" id="mask0_993_25">
              <path fill="white" d="M0 -0.00012207H682.667V682.667H0V-0.00012207Z"></path>
          </mask>
             <g mask="url(#mask0_993_25)">
                <path stroke-linejoin="round" stroke-linecap="round" stroke-miterlimit="10" stroke-width="40" stroke="#CED8DE" d="M148.535 19.9999C137.179 19.9999 126.256 24.5092 118.223 32.5532C110.188 40.5866 105.689 51.4799 105.689 62.8439V633.382C105.689 649.556 118.757 662.667 134.931 662.667H135.039C143.715 662.667 151.961 659.218 158.067 653.09C186.451 624.728 270.212 540.966 304.809 506.434C314.449 496.741 327.623 491.289 341.335 491.289C355.045 491.289 368.22 496.741 377.859 506.434C412.563 541.074 496.752 625.242 524.816 653.348C530.813 659.314 538.845 662.667 547.308 662.667C563.697 662.667 576.979 649.395 576.979 633.019V62.8439C576.979 51.4799 572.48 40.5866 564.447 32.5532C556.412 24.5092 545.489 19.9999 534.133 19.9999H148.535Z"></path>
              </g>
           </g>


           <defs>
              <clipPath id="clip0_993_251">
               <rect fill="white" height="682.667" width="682.667"></rect>
              </clipPath>
           </defs>

          </svg>
        </div>
      </div>

      <div class="text">
        <p class="h3">Your product title</p>
        <p class="p">Description</p> 

          <a href="#"><div class="icon-box">
  <p class="span">Add To Cart</p>
</div></a>
        


      </div>
    </div>
       
       </div>
       

       
  </div>

              

  </section>


    <style> 

        .card {
  width: 280px;
  background: white;
  border-radius: 10px;
  box-shadow: 0px 0px 14px -2px #bebebe;
  transition: 0.2s ease-in-out;
}

.card:hover {
  cursor: pointer;
}

.img {
  width: 100%;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  background: linear-gradient(#7980c5, #9198e5);
  display: flex;
  align-items: top;
  justify-content: right;
}

.save {
  transition: 0.2s ease-in-out;
  border-radius: 10px;
  margin: 20px;
  width: 30px;
  height: 30px;
  background-color: #ffffff;
  display: flex;
  align-items: center;
  justify-content: center;
}

.save .svg {
  transition: 0.2s ease-in-out;
  width: 15px;
  height: 15px;
}

.save:hover .svg {
  fill: #ced8de;
}

.text {
  padding: 7px 20px;
  display: flex;
  flex-direction: column;
  align-items: space-around;
}

.text .h3 {
  font-family: system-ui;
  font-size: medium;
  font-weight: 600;
  color: black;
  text-align: center;
}

.text .p {
  font-family: system-ui;
  color: #999999;
  font-size: 13px;
  margin: 0px;
  text-align: center;
  padding: 5px;
}

.icon-box {
padding-top: 12px;
    padding-right: 12px;
    padding-bottom: 12px;
    padding-left: 12px;

  background-color: #7980c5;
  border-radius: 10px;
  text-align: center;
}

.icon-box .span {
  font-family: system-ui;
  font-size: small;
  font-weight: 500;
  color: #fff;
}/*# sourceMappingURL=index.css.map */

    </style>

</asp:Content>
