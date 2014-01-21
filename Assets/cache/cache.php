<?php


// This prevents IE from caching the page. VERY annoying problem.
header ( "Pragma: no-cache" );
header ( "Cache-Control: no-cache" );
clearstatcache();



define('CACHEDIR'      , '');                             // Name of the directory where the cache file is stored.
define('CACHEFIE'      , 'cache.txt');                    // Name of the cache file.
define('CACHETIME'     , '30');                           // Data life time(seconds)
define('CHACHESUCCESS' , 'CACHE SUCCESS');                // success message for cache update
define('CHACHERR'      , 'ERROR WRITING TO THE CACHE');   // error message in cache update


class AppCache{
    
    protected $userId;       // Gets the usercode for the curent user
	protected $userName;     // Gets the username for the curent user
	
    protected $chatdir;      // Gets the cache directory name
    protected $cachefile;    // Gets the cache file name
    protected $cachetime;    // Gets the cache time 
    protected $cachesuccess; // Gets the cache success message
    protected $cacherr;      // Gets the cache error message
    
    
    public function __construct() {
  
        if(defined('CACHEDIR'))        $this->chatdir = CACHEDIR;
        if(defined('CACHEFIE'))        $this->cachefile = CACHEFIE;
        if(defined('CACHETIME'))       $this->cachetime = intval(CACHETIME);
        if(defined('CHACHESUCCESS'))   $this->cachesuccess = CHACHESUCCESS;
        if(defined('CHATERR'))         $this->cacherr = CHACHERR;
        if(isset($_POST['userid']))    $this->userId=trim(htmlentities($_POST['userid'], ENT_NOQUOTES, 'utf-8'));
		if(isset($_POST['username']))  $this->userName=trim(htmlentities($_POST['username'], ENT_NOQUOTES, 'utf-8'));

   } 
    
    public function UpdateCache(){
   
         if(file_exists($this->chatdir.$this->cachefile)){
            if($this->userId !== '' && $this->userId !== null && $this->userName !== '' && $this->userName !== null)
            {
                $data = json_decode(file_get_contents($this->chatdir.$this->cachefile), true);
                $data = $this->RefreshUsers($data);
                if(file_put_contents($this->chatdir.$this->cachefile, json_encode($data))){
				 return json_encode(array('Success'=>$this->cachesuccess));}
                else return json_encode(array('Error'=>$this->cacherr));
            }
        }
        
    }
    
    
  // returns array with online users in chat, in last "cachetime" sec.
  protected function RefreshUsers($users) {
 
	$reusr = array();	  

    // if users, traverses the array and stores the users in last "cachetime" sec.
	if(count($users) > 0) {
      foreach($users as $usr) {
		if($usr["UserId"] == $this->userId) continue;
        else if($this->cachetime > (time()-$usr["TimeStamp"])){
			$reusr[]=array(
			 'UserId'=>$usr["UserId"],
			 'UserName'=>$usr["UserName"],
			 'TimeStamp'=>$usr["TimeStamp"],
			);                                         }
                              }
                        }
						
	
	$reusr[]=array(
			 'UserId'=>$this->userId,
			 'UserName'=>$this->userName,
			 'TimeStamp'=>time(),
			);
    return $reusr;
  }
    
}

$obj=new AppCache();
echo $obj->UpdateCache();
?>