<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .titleframe2 {
        background-image: url("images/style_bar.jpg");
        background-repeat: no-repeat;
        background-position: center top;
        clear:both;
        width:100%;
     }
     .titleframe2 p{
        padding-top:20px;
        margin:10px;
     }
     
     .titleframe2 .boldtext {
        font-weight: bold;
        color:red;
     }
  
     .items{
        display: grid;
         grid-template-columns: 200px 200px 200px 200px 200px;
         grid-gap: 10px;
        z-index: 5px;
        margin:25px;
      
     }
     
     .items .item p {
        text-align : center;
        z-index: 1px;
        padding : 3px;
         margin: 8px;
      
        
     }
     
     .items .item {
        /* margin: 3px; */
        border: 1px solid gray;
        z-index: 5px;
        overflow: hidden;
        position: relative;
        border-radius: 7px;
		border-style: none;
     }
     
     .item .mask {
        position: absolute;
        margin-top : -40px;
         width: 207px;
         height: 225px;
        background: rgba(247,247,247,0.6);
        opacity: 1;
        transition:all 0.5s;
        z-index : 1px;
      
     }
 
  
</style>

</head>
<body>
<div class="titleframe2">
          
   </div>   
   <div class="items mask">
     <div class="item"> <img src="resources/flower.JPG" width="207" height="210" />
     </div>
     <div class="item">
          <img src="resources/TOKYO.jfif" width="207" height="210" alt="포트테일" />
       </div>
       
       <div class="item">
          <img src="resources/caption.jpg" width="207" height="210" alt="배색패치야상" />
       </div>
       
       <div class="item">
          <img src="resources/4wp-87.jpg" width="207" height="210" alt="언발#NB" />
       </div>
       
       <div class="item">
          <img src="resources/photo1jpg.jpg" width="207" height="210" alt="에디션" />
       </div>
       
     
       </div>                                                                        
                          
</body>
</html>