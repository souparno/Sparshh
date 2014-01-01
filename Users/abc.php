<?php
clearstatcache();

define('CACHEDIR'      , '../Assets/UserLoginCache/');    // Name of the directory where the cache file is stored.
define('CACHEFIE'      , 'chat2.txt');                    // Name of the cache file.
define('CACHETIME'     , '12');                           // Data life time(seconds)
define('CHACHESUCCESS' , 'CACHE SUCCESS');                // Maximum number of rows registered for chat
define('CHACHERR'      , 'ERROR WRITING TO THE CACHE');   // Maximum number of rows registered for chat


class AppCache{
    
    protected $user;         // Gets the usercode for the curent user
    protected $chatdir;      // Gets the cache directory name
	protected $cachefile;    // Gets the cache file name
    protected $cachetime;    // Gets the cache time 
    protected $cachesuccess; // Gets the cache success message
    protected $cacherr;      // Gets the cache error message
    
    
    public function __construct() {
  
        if(defined('CACHEDIR'))      $this->chatdir = CACHEDIR;
		if(defined('CACHEFIE'))      $this->cachefile = CACHEFIE;
        if(defined('CACHETIME'))     $this->cachetime = intval(CACHETIME);
        if(defined('CHACHESUCCESS')) $this->cachesuccess = CHACHESUCCESS;
		if(defined('CHATERR'))       $this->cacherr = CHACHERR;
        
        
        
        if(isset($_POST['userid']))   
        {
          $this->user=trim(htmlentities($_POST['userid'], ENT_NOQUOTES, 'utf-8'));
          
        
        }
   } 
    
    public function UpdateCache(){
   
         if(file_exists($this->chatdir.$this->cachefile)){
            if($this->user !== '' && $this->user !== null)
            {
                $datarows = json_decode(file_get_contents($this->chatdir.$this->cachefile), true);
                $datarows = $this->getUsers($datarows);
                file_put_contents($this->chatdir.$this->cachefile, json_encode($datarows));
                if(file_put_contents($this->chatdir.$this->cachefile, json_encode($datarows))) return json_encode(array('notification'=>$this->cachesuccess));
                else return json_encode(array('notification'=>$this->cacherr));
            }
        }
        
    }
    
    
  // returns array with online users in chat, in last 20 sec.
  protected function getUsers($users) {
    $regtime = time();  
    $reusr = array();

    // if users, traverses the arrsy and stores the users in last "cachetime" sec.
    if(count($users) > 0) {
      foreach($users as $t=>$usr) {
        if($usr == $this->user) continue;
        else if(intval($t) > ($regtime - $this->cachetime)) $reusr[$t] = $usr;
      }
    }

    // adds current user in list
    if($this->user !== '') $reusr[$regtime] = $this->user;
    $reusr = array_unique($reusr);
    return $reusr;
  }
    
}

$obj=new AppCache();
echo $obj->UpdateCache();
?>