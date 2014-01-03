<?php
clearstatcache();

define('CACHEDIR'      , '');                             // Name of the directory where the cache file is stored.
define('CACHEFIE'      , 'cache.txt');                    // Name of the cache file.
define('CACHETIME'     , '25');                           // Data life time(seconds)
define('CHACHESUCCESS' , 'CACHE SUCCESS');                // success message for cache update
define('CHACHERR'      , 'ERROR WRITING TO THE CACHE');   // error message in cache update


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
        if(isset($_POST['userid']))  $this->user=trim(htmlentities($_POST['userid'], ENT_NOQUOTES, 'utf-8'));
        //if(isset($_GET['userid']))   $this->user=$_GET['userid'];  
        
        
   } 
    
    public function UpdateCache(){
   
         if(file_exists($this->chatdir.$this->cachefile)){
            if($this->user !== '' && $this->user !== null)
            {
                $datarows = json_decode(file_get_contents($this->chatdir.$this->cachefile), true);
                $datarows = $this->RefreshUsers($datarows);
                file_put_contents($this->chatdir.$this->cachefile, json_encode($datarows));
                if(file_put_contents($this->chatdir.$this->cachefile, json_encode($datarows))) return json_encode(array(Alert=>$this->cachesuccess));
                else return json_encode(array(Alert=>$this->cacherr));
            }
        }
        
    }
    
    
  // returns array with online users in chat, in last 20 sec.
  protected function RefreshUsers($users) {
    $regtime = time();  
    $reusr = array();

    // if users, traverses the arrsy and stores the users in last "cachetime" sec.
    if(count($users) > 0) {
      foreach($users as $usr=>$t) {
        if($usr == $this->user) continue;
        else if($this->cachetime > ($regtime-intval($t))) $reusr[$usr] = $t;
      }
    }

    // adds current user in list
    if($this->user !== '') $reusr[$this->user] = $regtime;
    $reusr = array_unique($reusr);
    return $reusr;
  }
    
}

$obj=new AppCache();
echo $obj->UpdateCache();
?>