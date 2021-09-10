<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
   <head>
      <meta charset="utf-8">
      <title>${titleShop}</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="${titleShop}">
      <meta name="author" content="${titleShop}">
      <!-- Bootstrap styles -->
      <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet"/>
      <!-- Customize styles -->
      <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
      <!-- font awesome styles -->
      <link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.css" rel="stylesheet">
      <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ico/favicon.ico">
   </head>
   <body>
      <div class="container">
         <div id="gototop"> </div>
         <%@ include file="common/upper_header.jsp" %>
         <%@ include file="common/lower_header.jsp" %>
         <%@ include file="common/navbar.jsp" %>
         <!--
            Body Section
            -->
         <hr class="soften">
         <div class="well well-small">
            <h1>Visit us</h1>
            <hr class="soften"/>
            <div class="row-fluid">
               <div class="span8 relative">
                  <iframe style="width:100%; height:350px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.co.uk/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Newbury+Street,+Boston,+MA,+United+States&amp;aq=1&amp;oq=NewBoston,+MA,+United+States&amp;sll=42.347238,-71.084011&amp;sspn=0.014099,0.033023&amp;ie=UTF8&amp;hq=Newbury+Street,+Boston,+MA,+United+States&amp;t=m&amp;ll=42.348994,-71.088248&amp;spn=0.001388,0.006276&amp;z=18&amp;iwloc=A&amp;output=embed"></iframe>
                  <div class="absoluteBlk">
                     <div class="well wellsmall">
                        <h4>Contact Details</h4>
                        <h5>
                           2601 Mission St.<br/>
                           San Francisco, CA 94110<br/><br/>
                           info@mysite.com<br/>
                           ﻿Tel 123-456-6780<br/>
                           Fax 123-456-5679<br/>
                           web:wwwmysitedomain.com
                        </h5>
                     </div>
                  </div>
               </div>
               <div class="span4">
                  <h4>Email Us</h4>
                  <form class="form-horizontal">
                     <fieldset>
                        <div class="control-group">
                           <input type="text" placeholder="name" class="input-xlarge"/>
                        </div>
                        <div class="control-group">
                           <input type="text" placeholder="email" class="input-xlarge"/>
                        </div>
                        <div class="control-group">
                           <input type="text" placeholder="subject" class="input-xlarge"/>
                        </div>
                        <div class="control-group">
                           <textarea rows="3" id="textarea" class="input-xlarge"></textarea>
                        </div>
                        <button class="shopBtn" type="submit">Send email</button>
                     </fieldset>
                  </form>
               </div>
            </div>
         </div>
         <!--
            Clients
            -->
         <section class="our_client">
            <hr class="soften"/>
            <h4 class="title cntr"><span class="text">Manufactures</span></h4>
            <hr class="soften"/>
            <div class="row">
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/1.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/2.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/3.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/4.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/5.png"></a>
               </div>
               <div class="span2">
                  <a href="#"><img alt="" src="${pageContext.request.contextPath}/resources/img/6.png"></a>
               </div>
            </div>
         </section>
         <!--
            Footer
            -->
         <footer class="footer">
            <div class="row-fluid">
               <div class="span2">
                  <h5>Your Account</h5>
                  <a href="#">YOUR ACCOUNT</a><br>
                  <a href="#">PERSONAL INFORMATION</a><br>
                  <a href="#">ADDRESSES</a><br>
                  <a href="#">DISCOUNT</a><br>
                  <a href="#">ORDER HISTORY</a><br>
               </div>
               <div class="span2">
                  <h5>Iinformation</h5>
                  <a href="contact.html">CONTACT</a><br>
                  <a href="#">SITEMAP</a><br>
                  <a href="#">LEGAL NOTICE</a><br>
                  <a href="#">TERMS AND CONDITIONS</a><br>
                  <a href="#">ABOUT US</a><br>
               </div>
               <div class="span2">
                  <h5>Our Offer</h5>
                  <a href="#">NEW PRODUCTS</a> <br>
                  <a href="#">TOP SELLERS</a><br>
                  <a href="#">SPECIALS</a><br>
                  <a href="#">MANUFACTURERS</a><br>
                  <a href="#">SUPPLIERS</a> <br/>
               </div>
               <div class="span6">
                  <h5>The standard chunk of Lorem</h5>
                  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for
                  those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et
                  Malorum" by Cicero are also reproduced in their exact original form,
                  accompanied by English versions from the 1914 translation by H. Rackham.
               </div>
            </div>
         </footer>
      </div>
      <!-- /container -->
      <div class="copyright">
         <div class="container">
            <p class="pull-right">
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/maestro.png" alt="payment"></a>
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/mc.png" alt="payment"></a>
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/pp.png" alt="payment"></a>
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/visa.png" alt="payment"></a>
               <a href="#"><img src="${pageContext.request.contextPath}/resources/img/disc.png" alt="payment"></a>
            </p>
            <span>Copyright &copy; 2013<br> bootstrap ecommerce shopping template</span>
         </div>
      </div>
      <a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/jquery.easing-1.3.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo-1.4.3.1-min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/shop.js"></script>
      <script>
         $(document).ready(function(){
         $("#type").val("${product.typeId}").change();
         $('#type').on('change', function (e) {
             var optionSelected = $("option:selected", this);
             var valueSelected = this.value;
         	window.location.href = "${pageContext.request.contextPath}/product/${product.id}/"+ valueSelected;
         });
         // 		  $(".save-btn").click(function(e){
         // 			  e.preventDefault();
         // 			  var data = {
         // 				    id: $('#product-id').val(),
         // 				    name: $('#product-name').val(),
         // 				    image: $('#product-image').val(),
         // 				    categoryId: $('#category').find('option:selected').val(),
         // 				    brandId: $('#brand').find('option:selected').val(),
         // 				    description: CKEDITOR.instances.desc.getData().replace(/\s+/g, ' ').trim(),
         // 				}  
         // 			  $.ajax({
         // 				     type: "PUT",
         // 				     url: "${pageContext.request.contextPath}/admin/api/product",
         // 				     headers: { 
         // 					'Accept': 'application/json',
         // 					'Content-Type': 'application/json' 
         // 				     },
         // 				     dataType: "script",
         // 				     data: JSON.stringify(data),
         // 				     success: function (data, status) {
         // 					  location.href = "${pageContext.request.contextPath}/admin/product";
         // 				     },
         // 				     error: function (status) {
         // 					 // error handler
         // 					 console.log(status);
         // 				     }
         // 			  });
         // 		  });
         
         });
         
      </script>
   </body>
</html>