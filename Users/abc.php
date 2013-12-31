<?php
clearstatcache();

define('CACHEDIR' , '../Assets/UserLoginCache/');    // Name of the directory where the cache file is stored.
define('CACHEFIE' , 'chat2.txt');                    // Name of the cache file.
define('CACHETIME', '12');                           // Data life time(seconds)
define('CHACHERR' , 'ERROR WRITING TO THE CACHE');   // Maximum number of rows registered for chat


class AppCache{
    
    protected $chatdir;
	protected $cachefile;
    protected $cachetime;
    protected $cacherr;
    protected $user;
    
    public function __construct() {
  
        if(defined('CACHEDIR'))     $this->chatdir = CACHEDIR;
		if(defined('CACHEFIE'))     $this->cachefile = CACHEFIE;
        if(defined('CACHETIME'))    $this->cachetime = intval(CACHETIME);
		if(defined('CHATERR'))      $this->cacherr = CHACHERR;
        if(isset($_GET['userid']))  $this->user=$_GET['userid'];
   } 
    
    public function UpdateCache(){

         if(file_exists($this->chatdir.$this->cachefile)){

            if($this->user !== '')
            {
				$datarows = json_decode(file_get_contents($this->chatdir.$this->cachefile), true);
                $datarows = $this->getUsers($datarows);
                file_put_contents($this->chatdir.$this->cachefile, json_encode($datarows));
  			    if(file_put_contents($this->chatdir.$this->cachefile, json_encode($datarows))) return json_encode($datarows);
                else return json_encode(array('error'=>$this->cacherr));
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
$obj->UpdateCache();
?>