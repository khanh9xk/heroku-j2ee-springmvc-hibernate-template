<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
         <div class="row">
            <div class="span12">
               <ul class="breadcrumb">
                  <li><a href="${pageContext.request.contextPath}/">Trang chủ</a> <span class="divider">/</span></li>
                  <li class="active">Giỏ hàng</li>
               </ul>
               <div class="well well-small">
                  <h1>Check Out <small class="pull-right"> ${fn:length(cartList)} sản phẩm trong giỏ</small></h1>
                  <hr class="soften"/>
                  <table class="table table-bordered table-condensed">
                     <thead>
                        <tr>
                           <th>Sản phẩm</th>
                           <th>Mô tả</th>
                           <th>Số lượng có sẵn</th>
                           <th>Đơn giá</th>
                           <th>Số lượng mua</th>
                           <th>Tổng tiền</th>
                        </tr>
                     </thead>
                     <tbody>
                        <c:choose>
                           <c:when test="${not empty cartList}">
                              <c:forEach items="${cartList}" var="v_cart">
                                  <tr>
                                    <td><img width="100" src="${v_cart.image}" alt="${v_cart.image}"></td>
                                    <td>${v_cart.productName}<br>Loại : ${v_cart.type}<br>Nhãn hiệu : ${v_cart.brand}</td>
                                    <td>${v_cart.stock} </td>
                                    <td>${v_cart.price}</td>
                                    <td>
                                       <input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text" value="${v_cart.quantity}">
                                       <div class="input-append">
                                          <button class="btn btn-mini" type="button">-</button><button class="btn btn-mini" type="button"> + </button><button class="btn btn-mini btn-danger" type="button"><span class="icon-remove"></span></button>
                                       </div>
                                    </td>
                                    <td>$100.00</td>
                                 </tr>
                              </c:forEach>
                           </c:when>
                           <c:otherwise>
                                  Không có sản phẩm trong giỏ hàng
                           </c:otherwise>
                        </c:choose>
                       
                       
                        <tr>
                           <td colspan="6" class="alignR">Total products:	</td>
                           <td> $448.42</td>
                        </tr>
                        <tr>
                           <td colspan="6" class="alignR">Total products:	</td>
                           <td> $448.42</td>
                        </tr>
                        <tr>
                           <td colspan="6" class="alignR">Total products:	</td>
                           <td> $448.42</td>
                        </tr>
                        <tr>
                           <td colspan="6" class="alignR">Total products:	</td>
                           <td class="label label-primary"> $448.42</td>
                        </tr>
                     </tbody>
                  </table>
                  <br/>
                  <table class="table table-bordered">
                     <tbody>
                        <tr>
                           <td>
                              <form class="form-inline">
                                 <label style="min-width:159px"> VOUCHERS Code: </label> 
                                 <input type="text" class="input-medium" placeholder="CODE">
                                 <button type="submit" class="shopBtn"> ADD</button>
                              </form>
                           </td>
                        </tr>
                     </tbody>
                  </table>
                  <table class="table table-bordered">
                     <tbody>
                        <tr>
                           <td>ESTIMATE YOUR SHIPPING & TAXES</td>
                        </tr>
                        <tr>
                           <td>
                              <form class="form-horizontal">
                                 <div class="control-group">
                                    <label class="span2 control-label" for="inputEmail">Country</label>
                                    <div class="controls">
                                       <input type="text" placeholder="Country">
                                    </div>
                                 </div>
                                 <div class="control-group">
                                    <label class="span2 control-label" for="inputPassword">Post Code/ Zipcode</label>
                                    <div class="controls">
                                       <input type="password" placeholder="Password">
                                    </div>
                                 </div>
                                 <div class="control-group">
                                    <div class="controls">
                                       <button type="submit" class="shopBtn">Click to check the price</button>
                                    </div>
                                 </div>
                              </form>
                           </td>
                        </tr>
                     </tbody>
                  </table>
                  <a href="products.html" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Continue Shopping </a>
                  <a href="login.html" class="shopBtn btn-large pull-right">Next <span class="icon-arrow-right"></span></a>
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
