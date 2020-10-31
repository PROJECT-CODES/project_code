<?php
require_once("config/conn.php");
require_once("classes/CourseData.php");
require_once("classes/Topic.php");
require_once("classes/Project.php");
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
        
 
   <?php
     
    if(!isset($_GET['id']))
    {
       header("location:index.php"); 
    }
    $courseId=$_GET['id'];
    $courses = new CourseData($con,$courseId);
    $courseName = $courses->getCourseName();
    $courseImagePath = $courses->getCourseImagePath();
    $courseSmallDesc = $courses->getCourseSmallDesc();
    $courseBigDesc = $courses->getCourseBigDesc();
    $coursePrice = $courses->getCoursePrice();
    $courseProjectImagePath = $courses->getCourseProjectImagePath();


    ?>        
        

        
<header style=" background-image: linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)) , url(images/<?php echo $courseImagePath;  ?>);">
    
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
       
       <div class="welcome-box" style="top: 55%;">
        <h1 style="text-align: center;"><?php echo $courseName; ?></h1>
        <p>Price <?php echo $coursePrice; ?></p>
           <a href='#enroll-now-ic'> <button>Enroll Now</button></a>
        </div>
        

  
    
    
</header>
   
    
    
       <section id="info-course-section-wp">
       
       <div class="want-us-question-conatiner info-site">
           <h4>Course Overview</h4>
           <hr>
           <pre style="margin-bottom:30px;"><?php echo $courseBigDesc; ?></pre>
           
           
           
           <h5>Topics Outline</h5>
           <ul>
           
           <?php
         $topic = new Topic($con,$courseId);
foreach ($topic->getData() as $row)
            {
    
        $topicName = $row['topic'];
    echo "<li>$topicName</li>";
    
            }
               
               ?>
           
<!--
           <li>Intro to Spatial Computing and AR
</li>
-->
           </ul>
           
           
       </div>
       
   </section>
    
    
    
    
    <section class="courses">
    
    
    
     <div class="course-box-container">
               <h5>Course Projects</h5>
               <hr>

     <?php
            $project = new Project($con,$courseId);
//            print_r($project->getData());
            
        $i = 0;
            
            foreach ($project->getData() as $proj)
            {
                
                $projName = $proj['projTopic'];
                $projDesc = $proj['projDesc'];
                $projImage = $proj['projImage'];

                
                echo "<div class='course-box project-box-c'>
               <img src='images/$projImage' alt=''>
               <h4>$projName</h4>
               <p style='padding-bottom: 50px;'>$projDesc</p>
           </div>";
                
               $i+=1;
                if($i==2)
                {
                    break;
                }
            
            }
            
            ?>
                 
          
          
<!--
           <div class='course-box project-box-c'>
               <img src='images/6.jpg' alt=''>
               <h4>Project 1 Name</h4>
               <p style='padding-bottom: 50px;'>Depart do be so he enough talent. Sociable formerly six but handsome.</p>
           </div>
           
-->
          
           
        </div>
        
    </section>
    
    
    
    
    
     <section id="info-course-section-wp " >
       
       <div class="want-us-question-conatiner info-site" id="enroll-now-ic">
           <h4>Enroll Now</h4>
           <hr>
           
           
           <div class="form-info-enroll">
              
               <p class='enrollerror' style="color:#e52b5d;text-align:center;margin-bottom:20px;font-weight:bold;font-size:18px;display:none;">Please fill all the fields!</p>
              
              <div class="form-control-label-contain">
               <label for="">Parent's Name</label>
               <input type="text" placeholder="Enter Parent Name" class="ptName" required>
               </div>
               
               
               <div class="form-control-label-contain">
               <label for="">Student Name</label>
               <input type="text" placeholder="Enter Student Name" class="stName" required>
               </div>
               
               
               
               <div class="form-control-label-contain">
               <label for="">Email</label>
               <input type="email" placeholder="enter the email address" class="emailClassName"   required>
               </div>
               
               
               <div class="form-control-label-contain">
               <label for="">Phone-No</label>
               <input type="tel" pattern="[0-9]{10}" placeholder="enter your 10 digit phone-no " class='phoneName' required>
               </div> 
               
               
               <div class="form-control-label-contain sselectform">
               <label for="ss">Please Select a batch timing</label>
               <select name="" id="ss" class="batchName">
                   
                   <option value="">Click here to choose a timing</option>
                   
                   <option value="0">Monday-Thursday 5pm-6pm</option>
                   <option value="1">Saturday-Sunday 5pm-7pm</option>
                   
                   
               </select>
               
               <i for='ss' onclick="selectDropDownClick();"><ion-icon name="caret-down-outline"></ion-icon></i>
               
               
               </div>
               
               
               <button style="margin-top: 10px;" onclick='enrollClicked()'>Enroll Request</button>
               
               
               
           </div>
           
           
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
   <script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous">

</script>
  <script
  src="jquery.waypoints.min.js"></script>
   
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
    
    
    function selectDropDownClick()
    {
        $('#ss').click();

    }
    
    
    
    
    
    function enrollClicked()
    {
        
        
        var studentName= $(".stName").val();
        var parentName= $(".ptName").val(); 
        var phoneNo= $(".phoneName").val(); 
        var currentClass= $(".emailClassName").val(); 
        var batchTiming = $(".batchName").val(); 
        var courseId = '<?php  echo $courseId; ?>';
        var courseName = '<?php echo $courseName; ?>';
        
        
        $(".form-info-enroll button").text("Enrolling..");
        $(".form-info-enroll button").css("background-color","#757575");
        
        
        
        console.log(studentName,parentName,phoneNo,currentClass,batchTiming,courseId,courseName);
        
        if(studentName != ""  &&  parentName != "" && phoneNo != ""  &&  currentClass != "" &&      batchTiming != "" )
      {
                
        $.post("ajaxCall/enroll.php",{studentName:studentName, parentName:parentName,phoneNo:phoneNo,currentClass:currentClass,batchTiming:batchTiming,courseId:courseId,courseName:courseName},function(data){
            alert("Thank You for enrolling. Our team will contact you in 24 hours.");
        $(".form-info-enroll button").text("Enrolled");
        $(".form-info-enroll button").css("background-color","#d83176");
        });
          
        $(".enrollerror").hide();
          
          
          $(".stName").val("");
         $(".ptName").val(""); 
         $(".phoneName").val(""); 
          $(".currentClassName").val(""); 
         $(".batchName").val(""); 

          
      }else{
          $(".form-info-enroll button").text("Enroll");
        $(".form-info-enroll button").css("background-color","#d83176");
          $(".enrollerror").show();
      }
//        
        
    }
    
    
    
</script>
