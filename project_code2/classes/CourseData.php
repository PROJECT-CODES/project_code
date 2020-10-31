<?php

class CourseData{
    
    private $con;
    private $id;
    private $courseName;
    private $courseImagePath;
    private $courseSmallDesc;
    private $courseBigDesc;
    private $coursePrice;
    private $courseProjectImagePath;
    private $data;
    private $arrayData = array();
    
    public function __construct($con,$id){
        $this->con = $con;
        $this->$id = $id;
        $query="";
        if($this->$id  != null)
        {
            $query=$this->con->prepare("SELECT * FROM courses where id = :id");
            $query->bindParam(":id",$id);
            $query->execute();
            $this->data = $query->fetch(PDO::FETCH_ASSOC);
        
        }else
        {
            $query=$this->con->prepare("SELECT * FROM courses");
            $query->execute();
            while($row = $query->fetch(PDO::FETCH_ASSOC))
            {
                $this->arrayData[] = $row;
            }
                        
        }
        
        
        
    }
    
    
     public function getData()
    {
            return $this->arrayData;
    }
    
    
    
    public function getCourseName()
    {
        return $this->data['courseName'];
    }
    
     public function getCourseImagePath()
    {
        return $this->data['courseImagePath'];
    }
    
     public function getCourseSmallDesc()
    {
        return $this->data['courseSmallDesc'];
    }
    
    public function getCourseBigDesc()
    {
        return $this->data['courseBigDesc'];
    }
    
     public function getCoursePrice()
    {
        return $this->data['coursePrice'];
    }
    
     public function getCourseProjectImagePath()
    {
        return $this->data['courseProjectImagePath'];
    }
    
    public function getCourseId()
    {
        return $this->data['id'];
    }
    
    
     
    
}


?>