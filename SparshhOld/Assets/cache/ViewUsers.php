<?php
// This prevents IE from caching the page. VERY annoying problem.
header ( "Pragma: no-cache" );
header ( "Cache-Control: no-cache" );
clearstatcache();

define('CHATDIR'       , '');                           // Name of the directory where the Chat files is stored.
define('CHATFILE'      , 'chat.txt');                   // Name of the cache file.
define('CACHEFIE'      , 'cache.txt');                  // Name of the cache file.


Class Users{

protected $cachedir;      // Gets the cache directory name
protected $cachefile;    // Gets the cache file name
protected $chatfile;     // Gets the cache file name
protected $userId;       // Gets the usercode for the curent user
	
public function __construct() {

        if(defined('CACHEDIR'))     $this->cachedir = CACHEDIR;
        if(defined('CACHEFIE'))     $this->cachefile = CACHEFIE;
	if(defined('CHATFILE'))     $this->chatfile = CHATFILE;
	if(isset($_POST['userid'])) $this->userId=trim(htmlentities($_POST['userid'], ENT_NOQUOTES, 'utf-8'));
   } 

public function ViewUsers(){

$showUser="";
       
if(file_exists($this->cachedir.$this->cachefile) && file_exists($this->cachedir.$this->chatfile)){
  if($this->userId !== ''){

       $onlineUsers = $this->getUsers();
       $unreadMsg=$this->getMessage();
	if(count($onlineUsers)>0){
		foreach($onlineUsers as $usr){
	           $showUser=$showUser+"<a style='color: #336699;text-decoration: none;font-size:10px;font-weight:900;' onclick='ShowChat();' href='javascript:void(0);' >" + $usr["UserName"] + "</a><hr />";
		         		}
				}
	else $showUser=$showUser+"--Nobody is Online--";
				
				
            }
        }
echo $showUser;      
}
	
public function getUsers(){
$reusr = array();	  
$onlineUsers = json_decode(file_get_contents($this->cachedir.$this->cachefile), true);
if(count($onlineUsers) > 0) {
      foreach($onlineUsers as $usr) {
		if($usr["UserId"] == $this->userId) continue;
                else{
			$reusr[]=array(
			 'UserId'=>$usr["UserId"],
			 'UserName'=>$usr["UserName"],
			);                
                        
                }
                   }
                        }
           return $reusr;
	}
	
	
public function getMessage(){
$Message = json_decode(file_get_contents($this->cachedir.$this->chatfile), true);
$UnreadMsg=array();
if(count($Message) > 0) {
foreach($msg as $Message){
if($msg["Read"]==0 && $msg["RecipientID"]==$this->userId) 
    $UnreadMsg[]=array('UserId' => $msg["SenderID"],
        'UserName'=>$msg["SenderName"]);
				}
			}
return $UnreadMsg;
		}
}



$obj=new Users();
$obj->ViewUsers();



?>