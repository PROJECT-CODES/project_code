<?php

class Project{
    
    private $con;
    private $id;
    private $arrayData = array();
    
    public function __construct($con,$id){
        $this->con = $con;
        $this->$id = $id;
        $query="";
        if($this->$id  != null)
        {
            $query=$this->con->prepare("SELECT * FROM projects where courseId = :id ORDER BY projNo asc");
            $query->bindParam(":id",$id);
            $query->execute();
            while($row = $query->fetch(PDO::FETCH_ASSOC) ){
                
                $this->arrayData[] = $row;
                
            }
            
        
            
        }
        
        
        
    }
    
    
     public function getData()
    {
            return $this->arrayData;
    }
    
    
    
    
     
    
}


?>