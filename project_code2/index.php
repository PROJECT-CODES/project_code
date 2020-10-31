<?php
require_once("config/conn.php");
require_once("classes/CourseData.php");



?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,400&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="style.css" type="text/css">

    <title>Document</title>


</head>

<body>
    
    
<header>
    
    <div class="all-the-top ">
      
      <div class="logo-left">
          CourseAlma
          
      </div>
       
       
        <div class="email-right">
          mandaniajay0@gmail.com
          
      </div>
      
       
       <nav>
           <ul>
            <a href='index.php'><li>Home</li></a>
            <a href='index.php#courses-ic'><li>Online-Course</li></a>
            <a href='index.php#contact-ic'><li>Contact</li></a>
           
           </ul>
           
       </nav>
       <a class="nav-icon"><i><ion-icon name="reorder-three-sharp" class='i11' ></ion-icon>
       
       <ion-icon class='i22' name="close-sharp"></ion-icon>
       </i></a>
       
    

      
      </div>
       
       <div class="welcome-box">
        <h1>Print Your Dreams<br>With CourseAlma</h1>
        
           <a href='index.php#courses-ic'> <button>Browse Courses</button></a>
        </div>
        

  
    
    
</header>
   
   
    <section id="info-course-section-wp">
       
       <div class="want-us-question-conatiner info-site">
           <h4>About Us</h4>
           <hr>
           <p>Depart do be so he enough talent. Sociable formerly six but handsome. Up do view time they shot. He concluded disposing provision by questions as situation.</p>
       </div>
       
   </section>
   
   
   <section class="courses" id="courses-ic">
       
       
       <div class="course-box-container">
           
               <?php
            $c_data = new CourseData($con,null);
           
           foreach($c_data->getData() as  $r )
           {
                $courseName = $r['courseName'];
                $courseId = $r['id'];
                $courseImagePath = $r['courseImagePath'];
                $courseSmallDesc = $r['courseSmallDesc'];
                $coursePrice = $r['coursePrice'];
               
              echo "<div class='course-box'>  <a href='course.php?id=$courseId'>
               <img src='images/$courseImagePath' alt=''>
               
               <h3>Design/Ux/Developemnt</h3>
               <h4>$courseName</h4>
               <p>$courseSmallDesc</p>
               <p>Price $coursePrice.Rs</p>
               <button>See More</button>
        </a>
           </div>";
           }
           
           ?>
           
           
    
             
<!--
             
             <div class='course-box'>
            
              <a href='course.html'>
               <img src='images/4.jpg' alt=''>
               
               <h3>Design/Ux/Developemnt</h3>
               <h4>HTML CSS JAVASCRIPT</h4>
               <p>Depart do be so he enough talent. Sociable formerly six but handsome.</p>
               <button>See More</button>
        </a>
           </div>
-->

       
       </div>
       
   </section>
   
   
   
   <section id="contact-ic">
       
       <div class="want-us-question-conatiner">
           <h4>Want to ask us something</h4>
           <hr>
           <a href="mailto:mandaniajay0@gmail.com.com?Subject=Hello%20User"><button>Contact us</button></a>
       </div>
       
   </section>
   
   
   
   <footer>
       
       
       <div class="foot-container">
       <div class="left-footer">
           <h4>CourseAlma</h4>
           <p>Bringing 21st century skills to K-12 students worldwide</p>
           
       </div>
       <div class="right-footer">
        <h4>Online courses</h4>
           <ul>
            <li>Ethical Hacking</li>
            <li>Web Designing</li>
            <li>Python</li>
            <li>Web Developement</li>
            <li>C Programming</li>
            <li>C# Programming
            </li>
           </ul>

           
           
       </div>
       <div class="center-footer">
           
           <p>Ⓒ 2020 - 2021 CODE BYTES. All rights reserved.</p>
           
       </div>
       
       </div>
       
   </footer>
   
   <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>

</body>





</html>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous">

</script>
  <script
  src="jquery.waypoints.min.js"></script>
  
<script>
    $("document").ready(function(){
        $("#info-course-section-wp").waypoint(function(direction){
            
            if(direction == 'down')
                {
                    $(".all-the-top").addClass("stick");
                }else{
        $(".all-the-top").removeClass("stick");
                    
                

                }
            
        },{
            offset:'60px;'
        });
        
        
    var tognavl = 0;    
    $(".nav-icon").on("click",function(){
        
        if(tognavl==0)
            {
              
//        $(".all-the-top").addClass("full-nav");
        $(".all-the-top").addClass("full-nav");
    

           
                
    
//    $(".full-nav").css("transform","translate(0%,-200%)");   
      
                
                
                
                
            $(".nav-icon i ion-icon ").removeAttr("name");
                 $(".nav-icon i .i22").css("display","inline-block"); 
                
                $(".nav-icon i .i11").css("display","none");     
                
              tognavl = 1;      
            }else{
                $(".all-the-top").removeClass("full-nav");
                
                $(".nav-icon i .i22").css("display","none"); 
                
                $(".nav-icon i .i11").css("display","inline-block");
                
                
                tognavl = 0;       
            }
        
        
    });    
        
    })
    
    
    
    
</script>




